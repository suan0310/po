package com.bebe.spring.vo;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import com.bebe.spring.search.service.SearchService;

import lombok.Data;


@Data
public class pager {


	private boolean prev;
    private boolean next;
    private int totalCount2;
    private int totalCount;
    private int startPage;
    private int endPage ;
    private int perPageNum =5;
    private Criteria cri;

	public void setCriteraia(Criteria cri) {
		this.cri =  cri;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount=totalCount;
		calcData();
	}
	private void calcData() {
			endPage= (int) (Math.ceil(cri.getPage()/(double)perPageNum)*perPageNum);
			startPage=(endPage -perPageNum) +1;
			
			int tempEndPage = (int)(Math.ceil(totalCount/(double) cri.getPerPageNum()));
			
			if(endPage>tempEndPage) {
				endPage=tempEndPage;
			}
			prev=startPage ==1 ? false : true;
			
			next = endPage * cri.getPerPageNum()>=totalCount? false:true;
	}
	
	
}
