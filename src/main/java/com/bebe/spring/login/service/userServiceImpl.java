package com.bebe.spring.login.service;

import javax.inject.Inject;


import com.bebe.spring.login.vo.userVO;
import com.bebe.spring.login.dao.userDAO;

public class userServiceImpl implements userService{
	
	private final userDAO userDAO;
	
	@Inject
	public userServiceImpl(userDAO userDAO) {
		this.userDAO=userDAO;
	}
	//회원가입처리
	public void register(userVO userVO) throws Exception {
		System.out.println("2");
		userDAO.register(userVO);
		
	}
	

}
