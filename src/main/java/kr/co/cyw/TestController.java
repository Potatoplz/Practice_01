package kr.co.cyw;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	  @RequestMapping(value = "/paybtn", method = RequestMethod.GET) 
	  public String test() { 
		  return "/kakaopay/kakaopay";//jsp파일명
	  }
	  @RequestMapping(value = "/header", method = RequestMethod.GET) 
	  public String header() { 
		  return "/header";//jsp파일명
	  }
	  @RequestMapping(value = "/home", method = RequestMethod.GET) 
	  public String home() { 
		  return "/home0";//jsp파일명
	  }
	 
}
