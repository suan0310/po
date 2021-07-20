package com.bebe.spring.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.bebe.spring.vo.UsersVO;

public class userInfoDAOImpl implements userInfoDAO {

	@Autowired
	private SqlSession session;

	private static final String NS = "com.bebe.spring.user.dao.userInfoDAO";
	private static final String MODIFY = NS + ".modify";
	
	
	@Override
	public void modify(UsersVO vo) throws Exception {
		session.update(MODIFY, vo);
	}
}
