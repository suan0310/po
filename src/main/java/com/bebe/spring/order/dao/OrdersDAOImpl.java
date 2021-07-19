//package com.bebe.spring.order.dao;
//
//import javax.inject.Inject;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.stereotype.Repository;
//
//import com.bebe.spring.vo.OrdersAddressVO;
//
//public class OrdersDAOImpl implements OrdersDAO {
//	@Inject
//	SqlSession sqlsession;
//	private String namespaceEx = "com.bebe.spring.order.dao.OrdersDAO";
//
//	@Override
//	public int insertOrders(OrdersAddressVO vo) {
//		return sqlsession.insert(namespaceEx + ".orders", vo);
//	}
//
//}
