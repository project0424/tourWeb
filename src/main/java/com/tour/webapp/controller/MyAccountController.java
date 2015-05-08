package com.tour.webapp.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/account")
public class MyAccountController {
	static Log log = LogFactory.getLog(MyAccountController.class);

	@RequestMapping(value={"","/"}, method=RequestMethod.GET)
	public String homPage(HttpSession session) {  
		log.info("#################################################");
		log.info("MyAccount");
		log.info("#################################################");
		
		session.setAttribute("msg", "");
		
		return "account/myAccount"; 
	}

}
