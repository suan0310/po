package com.bebe.spring.login.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.bebe.spring.login.vo.LoginVo;

public class LoginDaoImpl implements LoginDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	private String namespaceEx = "com.bebe.spring.login.dao.LoginDao";
	
	@Override
	public int insertUser(LoginVo loginVo) {
		return sqlsession.insert(namespaceEx+".insertUser", loginVo);
	}
	
	@Override
	public int selectUser(LoginVo loginVo) {
		return sqlsession.selectOne(namespaceEx+".selectUser", loginVo);
	}	
	
}
