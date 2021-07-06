package com.bebe.spring.mybatis.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bebe.spring.HomeController;
import com.bebe.spring.mybatis.service.FruitsService;
import com.bebe.spring.mybatis.vo.FruitsVo;



@Controller
public class FruitsController {
	
	@Resource (name="fruitsService")
	private FruitsService fruitsService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
	@RequestMapping(value="/fruitsAll.do")
	public String fruitsAll(Model model){
		List<FruitsVo> list = fruitsService.selectAll();  /*select * from fruits */
		logger.info(list.toString());
		model.addAttribute("list", list);
		return "fruits";
	}
	
	
	@RequestMapping(value="/fruitsOne.do")
	public String fruitsOne(Model model){
		int code = 1;
		List<FruitsVo> list = fruitsService.selectOne(code); /*select * from fruits where code = #{code}*/
		logger.info(list.toString());
		model.addAttribute("list", list);
		return "fruits";
	}

}
