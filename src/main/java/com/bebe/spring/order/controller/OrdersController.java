package com.bebe.spring.order.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.order.service.OrdersService;
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
	public ModelAndView orderInfo(ModelAndView mav, List<OrdersAddressVO> vo) {
	
		
		
		
		
		
//		mav.addObject(count);
//		
////		mav.addObject(orderService.insertOrders(vo));
//		mav.setViewName("/order/order_sc");
			
		return mav;
	}
	
	
}
