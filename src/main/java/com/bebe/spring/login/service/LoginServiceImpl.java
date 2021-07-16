package com.bebe.spring.login.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bebe.spring.login.dao.LoginDao;
import com.bebe.spring.login.vo.LoginVo;



@Service ("LoginService")
public class LoginServiceImpl implements LoginService {

	
	@Autowired
	private LoginDao loginDao;
	
	@Override
	public int selectUser(LoginVo loginVo) {
		// TODO Auto-generated method stub
		return loginDao.selectUser(loginVo);
	}

	@Override
	public int insertUser(LoginVo loginVo) {
		// TODO Auto-generated method stub
		return loginDao.insertUser(loginVo);
	}

}
