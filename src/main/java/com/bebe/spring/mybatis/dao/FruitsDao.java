package com.bebe.spring.mybatis.dao;

import java.util.List;

import com.bebe.spring.mybatis.vo.FruitsVo;

public interface FruitsDao {
	List<FruitsVo> selectAll();
	List<FruitsVo> selectOne(int code);

}
