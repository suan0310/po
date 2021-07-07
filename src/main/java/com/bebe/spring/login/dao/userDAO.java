package com.bebe.spring.login.dao;

import com.bebe.spring.login.vo.userVO;

public interface userDAO {
	//회원가입
	void register(userVO userVO) throws Exception;
	//로그인
	void login(userVO userVO) throws Exception;
}
