package com.bebe.spring.usermylog.dao;

import java.util.List;

import com.bebe.spring.vo.QuestionVO;
import com.bebe.spring.vo.ReviewVO;

public interface userMylogDAO {
	public void mylog(QuestionVO vo) throws Exception;
	public void mylog(ReviewVO vo) throws Exception;
	
	public QuestionVO qview(int qs_no) throws Exception;
	public ReviewVO rview(int rv_no) throws Exception;
	
	List<QuestionVO> qlist(String id) throws Exception;
	List<ReviewVO> rlist(String id) throws Exception;

}
