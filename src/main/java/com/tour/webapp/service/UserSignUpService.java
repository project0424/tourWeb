package com.tour.webapp.service;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.stereotype.Service;

import com.tour.webapp.dao.UserDao;
import com.tour.webapp.model.User;

@Service
public class UserSignUpService {
	UserDao userDao;
	DataSource dataSource;

	public void setUserDao(UserDao dao) {
		userDao = dao;
	}
	public void setDataSource(DataSource ds) {
		dataSource = ds;
	}
	public void signUpUser(User user) {
		userDao.signUpUser(user);
	}
	public List<User> getUsers() {
		
		List<User> users = userDao.selectAll(); 
		return users;
	}
}
