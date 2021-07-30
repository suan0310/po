package com.bebe.spring.vo;

import java.util.Date;

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
	private Date orderDate;
	private String orderColor;
	private String orderSize;
	private String productName;
	private String productImg;
}
