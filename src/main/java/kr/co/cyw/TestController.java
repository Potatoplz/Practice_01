package kr.co.cyw;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	  @RequestMapping(value = "/home", method = RequestMethod.GET) 
	  public String test() { 
		  return "/pay/kakaopay";//jsp파일명
	  }
	 
}
