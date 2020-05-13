package com.team3.product.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductDTO {
	private int product_id;//번호
	private String product_name;//이름
	private int product_price;//가격
	private String product_desc;//상세설명
	private String product_url;//사진
	private MultipartFile productphoto;
	
	
	
	
	public ProductDTO() {}
	
	
	
	public MultipartFile getProductphoto() {
		return productphoto;
	}


	public void setProductphoto(MultipartFile productphoto) {
		this.productphoto = productphoto;
	}

	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public String getProduct_url() {
		return product_url;
	}
	public void setProduct_url(String product_url) {
		this.product_url = product_url;
	}
	
	
	
	
}
