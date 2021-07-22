package com.bebe.spring.order.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.order.service.OrdersService;
import com.bebe.spring.vo.OrdersAddressVO;
import com.bebe.spring.vo.OrdersVO;

@Controller
@RequestMapping(value = "/order/*")
public class OrdersController {
	@Inject
	OrdersService orderService;

	@RequestMapping(value="/order", method = RequestMethod.POST)
	public ModelAndView orderInfo(ModelAndView mav, @RequestParam(value="productNo") Integer[] pn,
			@RequestParam(value="orderPrice") Integer[] pr, @RequestParam(value="orderColor") String[] color,
			@RequestParam(value="orderSize") String[] size,@RequestParam(value="orderQty") Integer[] qty,OrdersAddressVO oav) {
		
		for(int i =0; i<pn.length;i++) {
			oav.setProductNo(pn[i]);
			oav.setOrderPrice(pr[i]);
			oav.setOrderColor(color[i]);
			oav.setOrderSize(size[i]);
			oav.setOrderQty(qty[i]);
			orderService.insertOrders(oav);
			orderService.deleteCart(oav);
		}
		System.out.println(oav);	
     	mav.setViewName("/order/order_sc");	
		return mav;
	}	

}
