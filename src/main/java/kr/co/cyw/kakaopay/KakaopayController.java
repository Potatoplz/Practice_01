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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class KakaopayController {
    @Setter(onMethod_ = @Autowired)
    private KakaoPay kakaopay;
    
	@RequestMapping(value = "kakaopay2", method = RequestMethod.GET)
	@ResponseBody
	public String kakaopay() {
		try {
			// 보내는 부분
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection con = (HttpURLConnection) url.openConnection(); 
			con.setRequestMethod("POST");
			con.setRequestProperty("Authorization", "KakaoAK dbc13710b2dc0454414348a60010b38e"); 
			con.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			con.setDoOutput(true);
			String param = "cid=TC0ONETIME" // 가맹점 코드
					+ "&partner_order_id=1001" // 가맹점 주문번호
					+ "&partner_user_id=gorany" // 가맹점 회원 id
					+ "&item_name=Notebook" // 상품명
					+ "&quantity=1" // 상품 수량
					+ "&total_amount=2100" // 총 금액
					+ "&tax_free_amount=100" // 상품 비과세 금액
					+ "&approval_url=http://localhost:8081/cyw/kakaopay/kakaopaySuccess" // 결제 성공 시
					+ "&fail_url=http://localhost:8081/cyw/kakaopaySuccessFail" // 결제 실패 시
					+ "&cancel_url=http://localhost:8081/cyw/kakaopayCancel"; // 결제 취소 시
			
			OutputStream send = con.getOutputStream(); 
			DataOutputStream dataSend = new DataOutputStream(send); 
			dataSend.writeBytes(param); 
			dataSend.close(); 
			
			int result = con.getResponseCode(); // 전송 잘 됐나 안됐나 번호를 받는다.
			InputStream receive; // 받다
			
			if(result == 200) {
				receive = con.getInputStream();
			}else {
				receive = con.getErrorStream(); 
			}
			// 읽는 부분
			InputStreamReader read = new InputStreamReader(receive); 
			BufferedReader change = new BufferedReader(read); 
			
			// 받는 부분
			return change.readLine();
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "";
	}
	
	@RequestMapping(value = "/kakaopay/kakaopaySuccess", method = RequestMethod.GET)
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
        log.info("kakaoPaySuccess get............................................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));//오류, 2차오류
        
    }
	
}
