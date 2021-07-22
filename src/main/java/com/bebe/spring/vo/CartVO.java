package com.bebe.spring.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CartVO {
	private String id;
	private int quantity;
	private int productNo;
	private String productSize;
	private String productColor;
	private int[] checkArr;
	private int count;
	
	   private String mainCategoryName;
	   private String subCategoryName;
	   private String productName;
	   private int productPrice;
	   private Date productDate;
	   private String productImg1;
	   private String productImg2;
	   private String productImg3;
	   private String productImg4;
	   private int productSales;
	   private int productTimesale;   
}
