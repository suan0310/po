package com.bebe.spring.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.user.service.CartService;
import com.bebe.spring.vo.CartVO;

@Controller

@RequestMapping("/user")
public class CartController {
	@Inject
	CartService cartService;
	//일단 성공본
//	@RequestMapping("/cart")
//	public ModelAndView cart(ModelAndView mav) {
//		mav.addObject("cart",cartService.cart());
//		mav.setViewName("/user/cart");
//		
//		return mav;
//	}
	
	//테스트용
	@RequestMapping("/cart2")
	public ModelAndView cart(ModelAndView mav) {
		
		mav.addObject("cart",cartService.cart());
		mav.setViewName("/user/cart2");
		
		return mav;
	}

	@RequestMapping(value= "/delete",method = RequestMethod.POST)
	public ModelAndView delete(CartVO cv,@RequestParam(value="RowCheck") List<String> chArr) {

		ModelAndView mav = new ModelAndView("/user/cart2");
		int productNo=0;
		for(String i : chArr) {
			productNo= Integer.parseInt(i);
			cv.setProductNo(productNo);
			cartService.delete(cv);
		}
		mav.addObject("cart",cartService.cart());
	
		return mav;
	}
	
	@RequestMapping(value="/goOrder", method=RequestMethod.GET)
	public ModelAndView order(CartVO cv, @RequestParam(value="RowCheck") List<String> chArr) {
		ModelAndView mav= new ModelAndView("/order/order");
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
