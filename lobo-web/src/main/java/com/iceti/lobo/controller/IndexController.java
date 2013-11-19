package com.iceti.lobo.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class IndexController {
	
	private static final Logger LOGGER = Logger.getLogger(IndexController.class);        

	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public String index(){
		LOGGER.info("[index] begins ...");
		return "index";
	}
}
