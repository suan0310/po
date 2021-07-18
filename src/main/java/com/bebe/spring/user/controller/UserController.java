package com.bebe.spring.user.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.user.service.UserService;
import com.bebe.spring.vo.OrdersAddressVO;
import com.bebe.spring.vo.ProductOrdersVO;

@Controller
@RequestMapping(value="user")
public class UserController {

	@Resource (name="userService")
	private UserService userService;

	//-------------------------------------------- 유저 구매내역 페이지 --------------------------------------------
	//유저 구매내역 검색
	@RequestMapping(value="/purchase_history", method = RequestMethod.GET)
	public ModelAndView userHistoryGet(HttpServletRequest req) {
		String id = "hoogun30";
		List<ProductOrdersVO> list = userService.selectOrdersList(id);
		ModelAndView mav = new ModelAndView("/user/purchase_history");
		mav.addObject("polist", list);
		return mav;
	}	
	
	@RequestMapping(value="/purchase_history", method = RequestMethod.POST)
	public String userHistoryPost(HttpServletRequest req) {		
		return "/user/purchase_history";
	}	
	
	//주문상세 버튼 눌렀을 때 팝업창
	@RequestMapping(value="/post_info", method = RequestMethod.GET)
	public ModelAndView userPostInfoGet(HttpServletRequest req, @RequestParam(value ="on") int orderNo, 
			@RequestParam(value ="name") String pName) {	
		OrdersAddressVO list =  userService.selectAddress	(orderNo);	
		
		ModelAndView mav = new ModelAndView("/user/post_info");
		mav.addObject("orderlist",list);
		mav.addObject("pName", pName);		
		return mav;
	}	
	
	//취소 버튼 눌렀을때
	@RequestMapping(value="/post_cancel", method = RequestMethod.GET)
	public ModelAndView userPostCancelGet(HttpServletRequest req, @RequestParam(value ="on") int orderNo) {	
		
		System.out.println("취소 컨트롤러 진입");
		userService.updatePostCancel(orderNo);	
		String id = "hoogun30";
		List<ProductOrdersVO> list = userService.selectOrdersList(id);
		ModelAndView mav = new ModelAndView("/user/purchase_history");
		mav.addObject("polist", list);
		
		return mav;
	}	
}










