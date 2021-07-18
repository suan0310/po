package com.bebe.spring.search.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.search.service.SearchService;
import com.bebe.spring.vo.Criteria;
import com.bebe.spring.vo.pager;


@Controller
@RequestMapping("/product")
public class SearchController {
	@Inject
	SearchService searchService;
	//카테고리별 페이지 처리, 제품출력
	@RequestMapping(value ="/searchPage",method = RequestMethod.GET)
	public ModelAndView searchList( ModelAndView mav,  Criteria cri) {
	
		pager pg = new pager();
		int num =searchService.count(cri);
		pg.setCri(cri);

		pg.setTotalCount(num);
		
		mav.setViewName("/product/searchPage");
		mav.addObject("list",searchService.getlist(cri));
		mav.addObject("pg",pg);
		
		return mav;
	}
	

	

}
