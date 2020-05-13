package com.team3.product.controller;


import java.util.List;


import javax.inject.Inject;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team3.product.dto.ProductDTO;
import com.team3.product.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/product/*")
public class productController {

	
	@Inject
	private ProductService productservice;
	
//	@RequestMapping(value="/list" , method = RequestMethod.GET)
//	public String selectmember(Model model) throws Exception{
//		
//		List<ProductDTO> prolist = productservice.selectpro();
//		model.addAttribute("prolist" , prolist);
//		
//		return "/product/prolist";
//	}
	
	//ModelAndView 활용 데이터를 모두 받는 형식
	
	@RequestMapping("/list")
	public ModelAndView list(ModelAndView mav){
		List<ProductDTO> prolist = productservice.selectpro();
		mav.setViewName("/product/prolist");
		mav.addObject("prolist", prolist);
		return mav;
	}
//	
	
	@RequestMapping("/detail/{product_id}")
	public ModelAndView detail(@PathVariable("product_id") int product_id , ModelAndView mav) {
		mav.setViewName("/product/productDetail");
		mav.addObject("vo", productservice.detailproduct(product_id));
		return mav;
	}

}
