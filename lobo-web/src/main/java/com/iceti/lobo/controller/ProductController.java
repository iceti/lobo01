package com.iceti.lobo.controller;

import java.util.List;

import org.apache.commons.collections.ListUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iceti.lobo.model.Product;
import com.iceti.lobo.service.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	private static final Logger LOGGER = Logger.getLogger(ProductController.class);

	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public String get(){
		LOGGER.info("[get] product begins ...");
		
		return "product-search";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/search/{name}", method = RequestMethod.GET)
    public @ResponseBody List<Product> search(@PathVariable("name") String name){

		if(StringUtils.isEmpty(name)){
			return ListUtils.EMPTY_LIST;
		}
		List<Product> stocks = this.productService.searchAll();
		
        return stocks;
    }

	@RequestMapping(value="/add.html", method = RequestMethod.POST)
    public @ResponseBody String add(@ModelAttribute(value = "product") Product product, BindingResult result){
        String returnText;
        if(!result.hasErrors()){
        	this.productService.saveOrUpdate(product);
            returnText = "Stock has been added to the list.";
        } else {
            returnText = "Sorry, an error has occur. User has not been added to list.";
        }
        
        return returnText;
    }
	
}
