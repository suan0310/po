package com.bebe.spring.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
   
   private String mainCategoryName;
   private int productNo;
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
