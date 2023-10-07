package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController 
{
	@GetMapping("/")
//	@ResponseBody
	public String main()
	{
		
		return "admin_navbar";
	}
}
