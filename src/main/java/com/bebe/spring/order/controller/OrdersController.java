package com.bebe.spring.order.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.order.service.OrdersService;
import com.bebe.spring.user.service.CartService;
import com.bebe.spring.vo.CartVO;
import com.bebe.spring.vo.OrdersAddressVO;

@Controller
@RequestMapping(value="/order/*")
public class OrdersController {
	@Inject
	OrdersService orderService;
//	@Inject
//	CartService cartService;
//	
//	@RequestMapping(value = "/order", method = RequestMethod.GET)
//	public  ModelAndView home(CartVO cv) {
//			ModelAndView mav= new ModelAndView("/order/order");
////			int productNo=0;
////			for(String i:chArr) {
////				productNo= Integer.parseInt(i);
////				cv.setProductNo(productNo);
////				cartService.order(cv);
////			}
////			mav.addObject("order",cartService.order(cv));
//			return mav;
//	}
//	
	@RequestMapping(value="/order", method = RequestMethod.POST)
	public String orderInfo(OrdersAddressVO vo) {
		System.out.println("구매버튼 누른후 service   ");
		orderService.insertOrders(vo);
		System.out.println("data 인서트 ");
		return "/order/order_sc";
	}
	
	
}
