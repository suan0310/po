package com.bebe.spring.usermylog.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bebe.spring.usermylog.dao.userMylogDAO;
import com.bebe.spring.vo.QuestionVO;
import com.bebe.spring.vo.ReviewVO;

@Service(value="userMylogService")
public class userMylogServiceImpl implements userMylogService{
	@Inject
	 userMylogDAO user;

	@Override
	public void mylog(QuestionVO vo) throws Exception {
		user.mylog(vo);
	}

	@Override
	public List<QuestionVO> qlist(String id) throws Exception {
		
		return user.qlist(id);
	}

	@Override
	public QuestionVO qview(int qs_no) throws Exception {

		return null;
	}
	
	//리뷰
	@Override
	public void mylog(ReviewVO vo) throws Exception {
		user.mylog(vo);
	}

	@Override
	public List<ReviewVO> rlist(String id) throws Exception {
		
		return user.rlist(id);
	}

	@Override
	public ReviewVO rview(int rv_no) throws Exception {

		return null;
	}
	
}
