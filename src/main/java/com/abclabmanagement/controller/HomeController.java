package com.abclabmanagement.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String goToHome() {
		return "index";
	}
	
	@RequestMapping("/register")
	public String goToRegisterPage() {
		return "registerpage";
	}
	
	@RequestMapping("/login")
	public String goToLoginPage() {
		return "loginpage";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
}
