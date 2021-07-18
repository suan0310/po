package com.bebe.spring.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrdersSearchVO {

	private String logDate;
	private int mainSelect;
	private String subSelect;
	private String searchWord;
}
