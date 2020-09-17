package com.goodeecoffee.gc.menu.service;

import java.util.List;
import java.util.Map;

import com.goodeecoffee.gc.menu.dto.CategoryDTO;
import com.goodeecoffee.gc.menu.dto.MenuDTO;

public interface IMenuService {

	List<Map<String, Object>> categoryLists(Map<String, Object> map);

	void categoryInsert(String categoryName);

	void categoryDelete(String categoryName);

	List<Map<String, Object>> menuList(Map<String, Object> map);

	void menuInsert(MenuDTO menu);
	
	void menuDelete(List<String> menuList);

	MenuDTO menuCheck(String menuName);

	CategoryDTO categoryCheck(String categoryName);

}
