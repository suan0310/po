package com.bebe.spring.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
<<<<<<< HEAD
   
   private String mainCategoryName;
   private int productNo;

   private String subCategory;
   private String mainCategory;
   private String productName;
   private int productPrice;
   private Date productDate;
   private String productImg1;
   private String productImg2;
   private String productImg3;
   private String productImg4;
   private int productSales;
   private int productTimesale;   
=======

	private int rownum;
	private int productNo;
	private String subCategoryName;
	private String mainCategoryName;
	private String productName;
	private int productPrice;
	private String productImg1;
	private String productImg2;
	private String productImg3;
	private String productImg4;
	private Date productDate;
	private int productSales;
	private int productTimesale;

	// detail VO (은혜)
	// options
	private String productColor;
	private String productSize;
	private int productStock;

	
	// review
	private int rvNo;
	private String id;
	private String rvContent;
	private Date rvDate;
	private int rvStar;
	
	private int rvBest;

	// cart
	private int quantity;

	// star
	private double avg;
	private int cnt;
	private double sum;

	// qs
	private int qsNo;
	private String qsTitle;
	private String qsContent;
	private int qsSecret;
	private Date qsDate;
	
	//answer
	private String qsAnswer;
	
>>>>>>> origin/nikki_work

}
