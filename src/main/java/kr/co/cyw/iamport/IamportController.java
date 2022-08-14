package kr.co.cyw.iamport;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IamportController {

	@RequestMapping(value = "/iamport", method = RequestMethod.GET)
	public String iamport() {
		return "/import/iamport";
	}//iamport
}
