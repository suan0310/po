package com.bebe.spring.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.user.service.CartService;
import com.bebe.spring.vo.CartVO;
import com.bebe.spring.vo.UsersVO;

@Controller

@RequestMapping("/user")
public class CartController {
	@Inject
	CartService cartService;
	//테스트용
	@RequestMapping("/cart2")
	public ModelAndView cart(ModelAndView mav,HttpSession session,CartVO cv) {
		UsersVO usesVO= (UsersVO) session.getAttribute("sessionUser");
		String id =usesVO.getId();
		cv.setId(id);
		System.out.println(cv);
		mav.addObject("cart",cartService.cart(cv));
		mav.setViewName("/user/cart2");
		
		return mav;
	}

	@RequestMapping(value= "/delete",method = RequestMethod.POST)
	public ModelAndView delete(CartVO cv,@RequestParam(value="RowCheck") List<String> chArr, HttpSession session) {
		ModelAndView mav = new ModelAndView("/user/cart2");
		UsersVO usesVO= (UsersVO) session.getAttribute("sessionUser");
		String id =usesVO.getId();
		cv.setId(id);
		int productNo=0;
		for(String i : chArr) {
			productNo= Integer.parseInt(i);
			cv.setProductNo(productNo);
			cartService.delete(cv);
		}
		mav.addObject("cart",cartService.cart(cv));
	
		return mav;
	}
	
	@RequestMapping(value="/goOrder", method=RequestMethod.GET)
	public ModelAndView order(CartVO cv, @RequestParam(value="RowCheck") List<String> chArr, HttpSession session) {
		ModelAndView mav= new ModelAndView("/order/order");
		UsersVO usesVO= (UsersVO) session.getAttribute("sessionUser");
		String id =usesVO.getId();
		cv.setId(id);
		ArrayList<CartVO> list = new ArrayList<>();
		int productNo=0;
		for(String i:chArr) {
			productNo= Integer.parseInt(i);
			cv.setProductNo(productNo);
			list.add(cartService.order(cv));
		}
		mav.addObject("order", list);
		return mav;
	}
	
	
		
}
