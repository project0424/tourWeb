package com.tour.webapp.controller;

import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tour.webapp.model.LoginStatus;
import com.tour.webapp.model.User;
import com.tour.webapp.service.UserSignUpService;

@Controller
@RequestMapping("/signup")
public class signUpController {
	static Log log = LogFactory.getLog(signUpController.class);

	@Autowired
	DataSource datasource;
	@Autowired
	UserSignUpService service;
	
	@RequestMapping(value={"","/"}, method=RequestMethod.GET)
	public String register() {  
		log.info("#################################################");
		log.info("회원가입 PAGE");
		log.info("#################################################");
		
		return "signup/signup"; 
	}

	@RequestMapping(value = "signup", method = RequestMethod.POST)
	@ResponseBody
	public LoginStatus join(@RequestBody User user) { 

		log.info("####################################");
		log.info("signup()");
		log.info("email = " + user.getId());
		log.info("password = " + user.getPassword());
		log.info("name = " + user.getNickname());
		log.info("####################################");

		boolean check = true;
		
		LoginStatus result = new LoginStatus();
		
		try {
			List<User> users = service.getUsers();
			for (User u : users) {
				log.info("##########################");
				log.info(u.getId() + " ? " + user.getId());
				log.info("##########################");
				if(u.getId().equals(user.getId())) {
					check = false;
				}
			}
			log.info("##########################");
			log.info(check);
			log.info("##########################");
			if(check){
				service.signUpUser(user);
				result.setUser(user);
				result.setStatus(true);
				result.setMsg("회원가입 성공");
			} else {
				result.setStatus(false);
				result.setMsg("이미 가입된  email주소입니다.");
			}
		} catch (DataAccessException e) {
			result.setStatus(false);
			result.setMsg("실패" + e.getMessage());
		}
		return result;
	}

}
