package com.bebe.spring.user.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bebe.spring.user.dao.userInfoDAO;
import com.bebe.spring.vo.UsersVO;

@Service(value="userInfoService")
public class userInfoServiceImpl implements userInfoService {

	@Inject
	 userInfoDAO user;

	@Override
	public void modify(UsersVO vo) throws Exception {
		user.modify(vo);
	}
	
	
}
