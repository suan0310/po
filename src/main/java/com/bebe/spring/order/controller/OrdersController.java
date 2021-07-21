package com.bebe.spring.order.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.order.service.OrdersService;
import com.bebe.spring.vo.OrdersAddressVO;

@Controller
@RequestMapping(value = "/order/*")
public class OrdersController {
	@Inject
	OrdersService orderService;

	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public ModelAndView orderInfo(ModelAndView mav, @RequestParam("count") int count, OrdersAddressVO oaVO) {
		System.out.println(count);

//		mav.addObject(count);
//		
////		mav.addObject(orderService.insertOrders(vo));
//		mav.setViewName("/order/order_sc");

		return mav;
	}

}
