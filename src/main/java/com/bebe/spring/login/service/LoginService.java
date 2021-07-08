package com.bebe.spring.login.service;


import com.bebe.spring.login.vo.LoginVo;

public interface LoginService {
	int insertUser(LoginVo loginVo);
	int selectUser(LoginVo loginVo);
}
