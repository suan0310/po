package com.bebe.spring.search.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView searchList( ModelAndView mav,  Criteria cri ) {
		pager pg = new pager();
		if(searchService.action(cri)==0) {	
			int num =searchService.scount(cri);
			pg.setCri(cri);
			pg.setTotalCount(num);
			mav.setViewName("/product/searchPage");
			mav.addObject("list",searchService.searchlist(cri));
			mav.addObject("ccc",cri.getKeyword());
			mav.addObject("pg",pg);
			System.out.println("dfsadf");
		}else {		
		int num =searchService.count(cri);
		pg.setCri(cri);
		pg.setTotalCount(num);
		mav.setViewName("/product/searchPage");
		mav.addObject("list",searchService.getlist(cri));
		mav.addObject("pg",pg);
	
		}
		
		
		return mav;
	}
	
	
//	@RequestMapping(value = "/searchPage2")
//	public ModelAndView searchList2( ModelAndView mav, Criteria cri) {
//		System.out.println("일단");
//		System.out.println(cri);
//		
//		pager pg = new pager();
//		int num =searchService.scount(cri);
//		pg.setCri(cri);
//
//		pg.setTotalCount(num);
//		
//		mav.setViewName("/product/searchPage");
//		mav.addObject("list",searchService.searchlist(cri));
//		mav.addObject("pg",pg);
//		System.out.println(searchService.searchlist(cri));
//		System.out.println("출력");
//		return mav;
//	}

	

}
