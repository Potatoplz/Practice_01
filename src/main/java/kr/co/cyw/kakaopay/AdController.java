package kr.co.cyw.kakaopay;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdController {
	   @RequestMapping(value="/kakaopay.cls", method = RequestMethod.POST)
	   @ResponseBody
	   public String kakaopay() {
	      try {
	         URL url = new URL("http://kapi.kakao.com/v1/payment/ready");
	         HttpURLConnection con = (HttpURLConnection) url.openConnection();
	         con.setRequestMethod("POST");
	         con.setRequestProperty("Authorization", "KakaoAK dbc13710b2dc0454414348a60010b38e");
	         con.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
	         con.setDoOutput(true);
	         
	         String param = "cid=TC0ONETIME&"
	                      + "partner_order_id=partner_order_id&"
	                      + "partner_user_id=partner_user_id&"
	                      + "item_name=초코파이&"
	                      + "quantity=1&"
	                      + "total_amount=2200&"
	                      + "vat_amount=200&"
	                      + "tax_free_amount=0&"
	                      + "approval_url=http://localhost:8081/cyw/success&"
	                      + "fail_url=http://localhost:8081/cyw/fail&"
	                      + "cancel_url=http://localhost:8081/cyw/fail";
	         OutputStream giver = con.getOutputStream();
	         DataOutputStream datagiver = new DataOutputStream(giver);
	         datagiver.writeBytes(param);
	         datagiver.close();
	         int result = con.getResponseCode();
	         
	         InputStream taker;
	         if(result==200) {
	            taker = con.getInputStream();
	         }else {
	            taker = con.getErrorStream();
	         }
	         InputStreamReader reader= new InputStreamReader(taker);
	         BufferedReader changer = new BufferedReader(reader);
	         return changer.readLine();
	               
	         
	      } catch (MalformedURLException e) {
	         e.printStackTrace();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	      return "{\"result\":\"NO\"}";
	   }
	   
}//AdController
