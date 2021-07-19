package com.bebe.spring.order.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bebe.spring.order.service.OrdersService;
import com.bebe.spring.vo.OrdersAddressVO;

@Controller
@RequestMapping(value="/order/*")
public class OrdersController {
	@Inject
	OrdersService orderService;
	
	@RequestMapping(value = "/order/order", method = RequestMethod.GET)
	public String home() {

		return "/order/order";
	}
	
	@RequestMapping(value="/order", method = RequestMethod.POST)
	public String orderInfo(OrdersAddressVO vo) {
		System.out.println("구매버튼 누른후 service   ");
		orderService.insertOrders(vo);
		System.out.println("data 인서트 ");
		return "/order/order_sc";
	}
	
	
}
