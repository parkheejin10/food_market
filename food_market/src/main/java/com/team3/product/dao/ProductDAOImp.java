package com.team3.product.dao;

import java.util.List;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team3.product.dto.ProductDTO;

@Repository
public class ProductDAOImp implements ProductDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.team3.mapper.productmapper";
	
	@Override
	public List<ProductDTO> selectpro(){
		
		//sqlsession이 마이바티스를 name으로 만든 것
		//selectList는 sqlSession에 있는 기능 중에 하나
		return sqlSession.selectList(Namespace + ".selectpro");
	}

	@Override
	public ProductDTO detailproduct(int productid) {
		return sqlSession.selectOne(Namespace+".detailproduct" , productid);
	}

	@Override
	public void updateproduct(ProductDTO productdto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteproduct(int productid) {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
