package com.bebe.spring.order.dao;

import java.util.List;
import java.util.Map;

import com.bebe.spring.vo.OrdersAddressVO;

public interface OrdersDAO {
	Integer insertOrders(OrdersAddressVO oav );
    Integer deleteCart(OrdersAddressVO oav);
<<<<<<< HEAD
=======
    Integer stock(OrdersAddressVO oav);
    Integer sales(OrdersAddressVO oav);
	 
>>>>>>> branch 'JH_work' of https://github.com/hoogun/bebeShop_project.git
}
