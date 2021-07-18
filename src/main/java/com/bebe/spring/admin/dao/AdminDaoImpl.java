package com.bebe.spring.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.bebe.spring.vo.OptionsVO;
import com.bebe.spring.vo.OrdersSearchVO;
import com.bebe.spring.vo.OrdersVO;
import com.bebe.spring.vo.ProductOptionsVO;
import com.bebe.spring.vo.ProductSearchVO;
import com.bebe.spring.vo.UsersVO;

public class AdminDaoImpl implements AdminDao {

	private String namespaceEx = "com.bebe.spring.admin.dao.AdminDao";
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public Integer updatePasswd(String passwd) {		
		return sqlsession.update(namespaceEx+".updatePasswd", passwd);
	}

	@Override
	public Integer insertProduct(ProductOptionsVO productOpVo) {
		return sqlsession.insert(namespaceEx+".insertProduct", productOpVo);
	}

	@Override
	public List<UsersVO> selectUsers() {
		return sqlsession.selectList(namespaceEx+".selectUsers");
	}

	@Override
	public Integer deleteUser(String id) {
		return sqlsession.delete(namespaceEx+".deleteUser", id);
	}

	@Override
	public List<ProductOptionsVO> selectProductList(ProductSearchVO psVo) {
		return sqlsession.selectList(namespaceEx+".selectProductList", psVo);
	}

	@Override
	public List<OptionsVO> selectOptions() {
		return sqlsession.selectList(namespaceEx+".selectOptions");
	}

	@Override
	public Integer deleteProduct(int checkproductno) {
		return sqlsession.delete(namespaceEx+".deleteProduct",checkproductno);
	}

	@Override
	public Integer deleteOptions(int checkproductno) {
		return sqlsession.delete(namespaceEx+".deleteOptions",checkproductno);
	}

	@Override
	public Integer insertOptions(OptionsVO optionsVo) {
		return sqlsession.delete(namespaceEx+".insertOptions",optionsVo);
	}

	@Override
	public List<OrdersVO> selectOrdersList(OrdersSearchVO osVo) {
		return sqlsession.selectList(namespaceEx+".selectOrdersList",osVo);
	}

	@Override
	public Integer updateOrderSts(OrdersVO orderVo) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespaceEx+".updateOrderSts",orderVo);
	}


	
}
