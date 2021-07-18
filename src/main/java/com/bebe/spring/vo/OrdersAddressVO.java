package com.bebe.spring.vo;

import lombok.Data;

@Data
public class OrdersAddressVO {
	private String id;
	private int orderNo;
	private int productNo;
	private int orderQty;
	private int orderPrice;
	private String stsDelivery;
	private String stsCancel;

	private int zipcode;
	private String addr;
	private String addrDetail;
	private String tel;
	private String addrReceiver;
	private String addrRequest;
	
	
}
