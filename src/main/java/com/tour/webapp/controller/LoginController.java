package com.tour.webapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tour.webapp.model.LoginStatus;
import com.tour.webapp.model.User;
import com.tour.webapp.service.UserSignUpService;

@Controller
@RequestMapping("/login")
public class LoginController {

	static Log log = LogFactory.getLog(LoginController.class);
	@Autowired
	DataSource datasource;
	@Autowired
	UserSignUpService service;
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public LoginStatus login(@RequestBody User user, HttpSession session) {
		log.info("#########################");
		log.info("login() POST...");
		log.info("id=" + user.getId());
		log.info("password=" + user.getPassword());
		log.info("#########################");
		
		LoginStatus result = new LoginStatus();
		
		List<User> users = service.getUsers();
		for (User u : users) {
			log.info("#####################################");
			log.info(u.getId() + " : " + user.getId());
			log.info(u.getPassword() + " : " + user.getPassword());
			log.info("#####################################");
			if(u.getId().equals(user.getId()) && u.getPassword().equals(user.getPassword())){
				session.setAttribute("user", user);
				result.setStatus(true);
				return result;
			} else {
				// Login Fail
				result.setStatus(false);
			}
			result.setUser(user);
		}
		return result;	
	}
	
	@ResponseBody
	@RequestMapping(value="/logincheck", method=RequestMethod.GET)
	public LoginStatus logcheck(HttpSession session) {
		log.info("#########################");
		log.info("logincheck() GET...");
		log.info("#########################");
		
		User user = (User)session.getAttribute("user");
		
		LoginStatus status = new LoginStatus();
		if (user == null)
			status.setStatus(false);
		else
			status.setStatus(true);
		
		status.setUser(user);
		
		return status;
	}
	
	@ResponseBody
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public LoginStatus logout(HttpSession session) {
		log.info("#########################");
		log.info("logout() GET...");
		log.info("#########################");
		
		session.invalidate();
		
		LoginStatus status = new LoginStatus();
		status.setStatus(false);
		
		return status;
	}
	
	
}
