package com.goodeecoffee.gc.salesList.controller;

import java.sql.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodeecoffee.gc.salesList.service.ISaleService;

@Controller
public class SalesListController {
	
	@Resource(name="saleService")
	private ISaleService saleService;
	
	@RequestMapping(value="/salesList", method=RequestMethod.GET)
	public String salesList() {
		return "salesList";
	}
	
	@RequestMapping(value="/selectSaleList", method=RequestMethod.GET)
	public String salesL(@RequestParam("startDate") Date startDate, @RequestParam("endDate") Date endDate) {
		System.out.println("startDate : "+startDate);
		System.out.println("endDate : "+endDate);
		return "salesList";
	}
	
	
}
