package com.bebe.spring.login.dao;


import com.bebe.spring.login.vo.LoginVo;

public interface LoginDao {
	int insertUser(LoginVo loginVo);
	int selectUser(LoginVo loginVo);
}
