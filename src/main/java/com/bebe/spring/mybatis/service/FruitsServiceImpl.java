package com.bebe.spring.mybatis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bebe.spring.mybatis.dao.FruitsDao;
import com.bebe.spring.mybatis.vo.FruitsVo;

@Service("fruitsService")
public class FruitsServiceImpl implements FruitsService {

	@Autowired
	private FruitsDao fruitsDao;
	
	@Override
	public List<FruitsVo> selectAll() {
		return fruitsDao.selectAll();
		
	}

	@Override
	public List<FruitsVo> selectOne(int code) {
		return fruitsDao.selectOne(code);
		
	}
}
