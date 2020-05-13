package com.team3.product.service;

import java.util.List;

import com.team3.product.dto.ProductDTO;

public interface ProductService {
	public List<ProductDTO> selectpro();
	
	public ProductDTO detailproduct(int productid);
	
	public void updateproduct(ProductDTO productdto);
	
	public void deleteproduct(int productid);

	
	
}