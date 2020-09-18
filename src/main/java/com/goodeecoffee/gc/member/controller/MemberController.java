package com.goodeecoffee.gc.member.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goodeecoffee.gc.member.service.IMemberService;

@Controller
public class MemberController {
	
	@Resource(name="memberService")
	private IMemberService memberService;

	@RequestMapping(value="alterInto", method=RequestMethod.GET)
	public String alterInto() {
		
		return "member_alterInto";
	}
	
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String register() {
		
		return "member_register";
	}
	
	@RequestMapping(value="withdraw", method=RequestMethod.GET)
	public String withdraw() {
		
		return "member_withdraw";
	}

	@RequestMapping(value="list", method=RequestMethod.GET)
	public String list() {
		//list
		return "member_list";
	}
	
}
