package com.goodeecoffee.gc.salesList.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goodeecoffee.gc.salesList.service.ISaleService;

@Controller
public class SalesListController {
	@Resource(name="saleService")
	private ISaleService saleService;
	
	@RequestMapping(value="/salesList", method=RequestMethod.GET)
	public String salesList() {
		
		return "salesList";
	}
	
	@RequestMapping(value="/ss", method=RequestMethod.GET)
	public String salesL() {
		System.out.println("ss");
		return "salesList";
	}
	
	
}
