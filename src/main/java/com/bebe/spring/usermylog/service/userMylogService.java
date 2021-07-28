package com.bebe.spring.usermylog.service;

import java.util.List;
import java.util.Map;

import com.bebe.spring.vo.QuestionVO;
import com.bebe.spring.vo.ReviewVO;

public interface userMylogService {
	public void mylog(QuestionVO vo) throws Exception;
	public void mylog(ReviewVO vo) throws Exception;
	
	
	//문의 목록
	public List<QuestionVO> qlist(Map<String, String> map) throws Exception;
	//조회
	public QuestionVO qview(int qs_no) throws Exception;
	
	
	
	//목록
	public List<ReviewVO> rlist(String id) throws Exception;
	//조회
	public ReviewVO rview(int rv_no) throws Exception;
	
	
}
