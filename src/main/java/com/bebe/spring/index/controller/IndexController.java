package com.bebe.spring.index.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.index.service.IndexService;
import com.bebe.spring.vo.ProductVO;
import com.bebe.spring.vo.ReviewVO;

@Controller
@RequestMapping("/index")
public class IndexController {
	@Inject
	IndexService indexService;
	
	
	@RequestMapping(value= "/index", method = RequestMethod.GET)
	public ModelAndView Index(ModelAndView mav,ProductVO pv, ReviewVO rv) {
		System.out.println("1. 뷰에서 들어온다");
		System.out.println(pv);
		mav.addObject("slide", indexService.newItem(pv));
		mav.addObject("Index", indexService.hotItem(pv));
		mav.addObject("rv",indexService.bestRv(rv));
		mav.setViewName("/index/index");
		
		System.out.println("3.컨트롤러에서 사이트 출력");
		
		return mav;
	}
//	
//	@RequestMapping(value= "/index", method = RequestMethod.GET)
//	public String Index(Model model) {
//		System.out.println("이거");
//		try {
//			model.addAttribute("list",indexService.hotItem());
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			System.out.println("이에러");
//		}
////		mav.setViewName("/index/index");
//		System.out.println("저거");
//		
//		return "/index/index";
//	}
}
