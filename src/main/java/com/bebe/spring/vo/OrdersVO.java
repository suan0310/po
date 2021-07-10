package com.bebe.spring.vo;

import lombok.Data;

@Data
public class OrdersVO {
	private String id;
	private int orderNo;
	private int productNo;
	private int orderQty;
	private int orderPrice;
	private String stsDelivery;
	private String stsCancel;
}
