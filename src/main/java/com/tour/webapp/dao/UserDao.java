package com.tour.webapp.dao;

import java.util.List;

import javax.sql.DataSource;

import com.tour.webapp.model.User;

public interface UserDao {

	public void setDataSource(DataSource ds);

	public void signUpUser(User user);
	
//	public Member selectByDeptnoWithEmps(Integer deptno);
//	
//	/*
//	 * Multiple row
//	 */
	public List<User> selectAll();
//	public List<Member> selectAllWithEmps();

}
