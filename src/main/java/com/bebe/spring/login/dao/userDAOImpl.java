package com.bebe.spring.login.dao;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.bebe.spring.login.vo.userVO;

public class userDAOImpl  implements userDAO{
	private static final String NAMESPACE = "com.bebe.spring.mappers.userMapper";
	private final SqlSession sqlSession;
	
	@Inject
	public userDAOImpl(SqlSession sqlSession) {
		this.sqlSession= sqlSession;
	}
	
	//회원가입처리
	@Override	
	public void register(userVO userVO) throws Exception {
		System.out.println("1");
		sqlSession.insert(NAMESPACE+ ".register", userVO);
		
	}

	@Override
	public void login(userVO userVO) throws Exception {
		// TODO Auto-generated method stub
		
	}
	

}
