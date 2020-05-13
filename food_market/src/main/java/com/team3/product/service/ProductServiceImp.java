package com.team3.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team3.product.dao.ProductDAO;
import com.team3.product.dto.ProductDTO;

@Service
public class ProductServiceImp implements ProductService {

	@Inject
	private ProductDAO productdao;
	
	
	@Override
	public List<ProductDTO> selectpro(){
		
		return productdao.selectpro();
	}


	@Override
	public ProductDTO detailproduct(int productid) {
		return productdao.detailproduct(productid);
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
