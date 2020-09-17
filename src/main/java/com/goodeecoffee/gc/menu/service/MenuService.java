package com.goodeecoffee.gc.menu.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.goodeecoffee.gc.menu.dao.IMenuDAO;
import com.goodeecoffee.gc.menu.dto.CategoryDTO;
import com.goodeecoffee.gc.menu.dto.MenuDTO;

@Service("menuService")
public class MenuService implements IMenuService{

	@Resource(name="menuDAO")
	private IMenuDAO menuDAO;
	
	@Override
	public List<Map<String, Object>> categoryLists(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return menuDAO.categoryLists(map);
	}

	@Override
	public void categoryInsert(String categoryName) {
		menuDAO.categoryInsert(categoryName);
		
	}

	@Override
	public void categoryDelete(String categoryName) {
		menuDAO.categoryDelete(categoryName);
		
	}

	@Override
	public List<Map<String, Object>> menuList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return menuDAO.menuList(map);
	}

	@Override
	public void menuInsert(MenuDTO menu) {
		// TODO Auto-generated method stub
		menuDAO.menuInsert(menu);
	}

	@Override
	public void menuDelete(List<String> menuList) {
		// TODO Auto-generated method stub
		menuDAO.menuDelete(menuList);
	}

	@Override
	public MenuDTO menuCheck(String menuName) {
		return menuDAO.menuCheck(menuName);
	}

	@Override
	public CategoryDTO categoryCheck(String categoryName) {
		return menuDAO.categoryCheck(categoryName);
	}

	

}
