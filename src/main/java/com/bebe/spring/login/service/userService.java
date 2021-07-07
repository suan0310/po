package com.bebe.spring.login.service;

import com.bebe.spring.login.vo.userVO;

public interface userService {
	 //회원가입처리
	 void register(userVO userVO) throws Exception;
}
