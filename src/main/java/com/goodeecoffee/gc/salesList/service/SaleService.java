package com.goodeecoffee.gc.salesList.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.goodeecoffee.gc.menu.dao.IMenuDAO;
import com.goodeecoffee.gc.salesList.dao.SaleDAO;

@Service("saleService")
public class SaleService implements ISaleService{
	@Resource(name="saleDAO")
	private SaleDAO saleDAO;
}
