//package com.bebe.spring.usermylog.dao;
//
//import java.util.List;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import com.bebe.spring.vo.QuestionVO;
//import com.bebe.spring.vo.ReviewVO;
//
//public class userMylogDAOImpl implements userMylogDAO {
//
//	@Autowired
//	private SqlSession session;
//
//	private static final String NS = "com.bebe.spring.usermylog.dao.userMylogDAO";
//	private static final String MODIFY = NS + ".mylog";
//
//	@Override
//	public void mylog(QuestionVO vo) throws Exception {
//		session.update(MODIFY, vo);
//	}
//	@Override
//	public void mylog(ReviewVO vo) throws Exception {
//		session.update(MODIFY, vo);		
//	}
//
//	// 문의 목록
//	@Override
//	public List<QuestionVO> qlist() throws Exception {
//		return session.selectList(NS + ".list");
//	}
//
//	// 문의 조회
//	@Override
//	public QuestionVO qview(int qs_no) throws Exception {
//
//		return session.selectOne(NS + ".view", qs_no);
//	}
//
//	// 리뷰 목록
//	@Override
//	public List<ReviewVO> rlist() throws Exception {
//		return session.selectList(NS + ".list");
//	}
//
//	// 리뷰 조회
//	@Override
//	public ReviewVO rview(int qs_no) throws Exception {
//
//		return session.selectOne(NS + ".view", qs_no);
//	}
//
//
//}
