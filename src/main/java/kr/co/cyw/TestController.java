package kr.co.cyw;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	@RequestMapping(value = "/testview", method = RequestMethod.GET) 
	public String testview() { 
		return "TestViewPage";//테스트 뷰
			}
	@RequestMapping(value = "/paybtn", method = RequestMethod.GET) 
	public String test() { 
		  return "/kakaopay/kakaopay";//jsp파일명
	}
	@RequestMapping(value = "/header", method = RequestMethod.GET) 
	public String header() { 
		  return "/mainHeader";//메인헤더 작업중
	}
	@RequestMapping(value = "/footer", method = RequestMethod.GET) 
	public String footer() { 
		return "/mainFooter";//메인푸터 작업중
	}
	@RequestMapping(value = "/coupon", method = RequestMethod.GET) 
	public String coupon() { 
		return "/coupon/coupon";
	}
	@RequestMapping(value = "/coupon2", method = RequestMethod.GET) 
	public String coupon2() { 
		return "/coupon/coupon_reg";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET) 
	public String home() { 
		  return "/home0";//jsp파일명
	}
	 
}
