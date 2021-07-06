package com.bebe.spring.mybatis.service;

import java.util.List;

import com.bebe.spring.mybatis.vo.FruitsVo;

public interface FruitsService {
	List<FruitsVo> selectAll();
	List<FruitsVo> selectOne(int code);


}
