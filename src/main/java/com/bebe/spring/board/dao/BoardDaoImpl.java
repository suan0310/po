package com.bebe.spring.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.bebe.spring.board.vo.BoardVO;
import com.bebe.spring.board.vo.Criteria;

public class BoardDaoImpl implements BoardDao {

	// @Inject는 객체타입이 일치하는 객체타입을 자동으로 주입한다.
	@Inject
	private SqlSession sqlSession;

	/* private static String namespace = "com.bebe.spring.mapper.Board"; */

	@Override
	public List<BoardVO> noticeList(Criteria cri) throws Exception {
		return sqlSession.selectList("Board.noticeList");
		/* return sql.Session.selectList(namespace + ".list"); */
	}

	@Override
	public List<BoardVO> faqList() throws Exception {
		return sqlSession.selectList("Board.faqList");
	}

	@Override
	public int noticeListCount(Criteria cri) throws Exception {
		return sqlSession.selectOne("Board.noticeListCount");
	}

	@Override
	public BoardVO readNotice(int noticeNo) throws Exception {
//		xml을 실행시키는 역할로 Board에 있는 readNotice를 실행해라
		return sqlSession.selectOne("Board.readNotice");
	}

	@Override
	public BoardVO readFaq(int faqNo) throws Exception {
		return sqlSession.selectOne("Board.readFaq");
	}

	@Override
	public void writeNotice(BoardVO boardVO) throws Exception {
		sqlSession.insert("Board.writeNotice");
	}

	@Override
	public void writeFaq(BoardVO boardVO) throws Exception {
		sqlSession.insert("Board.writeFaq");
	}

	@Override
	public List<BoardVO> category(String noticeCategory) throws Exception {
		return sqlSession.selectList("Board.category");
	}

	@Override
	public void deleteNotice(int noticeNo) throws Exception {
		sqlSession.delete("Board.deleteNotice");
	}

	@Override
	public void deleteFaq(int faqNo) throws Exception {
		sqlSession.delete("Board.deleteFaq");
	}

	@Override
	public void updateNotice(BoardVO boardVO) throws Exception {
		sqlSession.update("Board.updateNotice");
	}

	@Override
	public void updateFaq(BoardVO boardVO) throws Exception {
		sqlSession.update("Board.updateFaq");
	}
	
	@Override
	public int rnumCount() throws Exception{
		return sqlSession.selectOne("Board.rnumCount");
	}

}
