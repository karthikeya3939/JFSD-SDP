package com.klef.jfsd.springboot.service;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;


public interface AdminService
{
	
	public Admin checkadminlogin(String uname, String pwd);
	
	
}
