package com.iceti.lobo.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iceti.lobo.model.Product;
import com.iceti.lobo.service.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	private static final Logger LOGGER = Logger.getLogger(ProductController.class);

	@Inject
	private ProductService productService;
	
	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public String get(){
		LOGGER.info("[get] product begins ...");
		
		return "product-search";
	}
	
	@RequestMapping(value = "/search/all", method = RequestMethod.GET)
    public @ResponseBody List<Product> search(){

		List<Product> stocks = this.productService.searchAll();

		
        return stocks;
    }

	@RequestMapping(value = "/add.html", method = RequestMethod.POST)
    public String add(@ModelAttribute(value = "product") Product product, BindingResult result){
        if(!result.hasErrors()){
        	this.productService.saveOrUpdate(product);
        } else {
        }
        
        return "product-search";
    }
	
}
