package kr.co.cyw.kakaopay;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;


import lombok.extern.java.Log;

@Log
@Controller
public class KakaoController {

//	@Autowired
//	KakaoPayBiz biz;
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String test() {
		return "/pay/pay";//jsp파일명
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String success() {
		return "/pay/success";
	}//결제 요청 성공
	
	@RequestMapping(value = "/fail", method = RequestMethod.GET)
	public String fail() {
		return "/pay/fail";
	}//결제 요청 성공

	@RequestMapping(value = "/kakao/payReady", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public String kakaopay() {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("Authorization", "KakaoAK dbc13710b2dc0454414348a60010b38e");
			con.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			con.setDoOutput(true);

			String param = "cid=TC0ONETIME&" + "partner_order_id=partner_order_id&" + "partner_user_id=partner_user_id&"
					+ "item_name=ad cost&" + "quantity=1&" + "total_amount=100000&" + "vat_amount=10000&"
					+ "tax_free_amount=0&" 
					+ "approval_url=https://developers.kakao.com/success" 
					+ "fail_url=http://localhost:8081/cyw/fail&"
					+ "cancel_url=http://localhost:8081/cyw/fail";
			OutputStream giver = con.getOutputStream();
			DataOutputStream datagiver = new DataOutputStream(giver);
			datagiver.writeBytes(param);
			datagiver.close();
			int result = con.getResponseCode();
			System.out.println(con.getResponseCode());
			InputStream taker;
			if (result == 200) {
				taker = con.getInputStream();
			} else {
				taker = con.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(taker);
			BufferedReader changer = new BufferedReader(reader);
			return changer.readLine();

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "{\"result\":\"NO\"}";
	}

}