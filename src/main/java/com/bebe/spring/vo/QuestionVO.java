package com.bebe.spring.vo;

import java.util.Date;

import lombok.Data;

@Data
public class QuestionVO {
   
   private int qsNo;
   private int productNo;
   private String id;
   private String qsTitle;
   private String qsContent;
   private int qsSecret;
   private Date qsDate;

}
