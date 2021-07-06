package com.bebe.spring.mybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.bebe.spring.mybatis.vo.FruitsVo;

public class FruitsDaoImpl implements FruitsDao {

	@Autowired
	private SqlSession sqlsession;
	
	private String namespaceEx = "com.bebe.spring.mybatis.dao.FruitsDao";
	
	@Override
	public List<FruitsVo> selectAll() {
		return sqlsession.selectList(namespaceEx+".selectAll");
		
	}
	
	@Override
	public List<FruitsVo> selectOne(int code) {
		return sqlsession.selectOne(namespaceEx+".selectOne", code);
		
	}
	
	
}
