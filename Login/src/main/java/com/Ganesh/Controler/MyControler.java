package com.Ganesh.Controler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyControler {
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping("/login")
	public String login() {
			return "login";
	}
	@RequestMapping("/logdtl")
	public String logdtl(@RequestParam String uname,@RequestParam String upass, Model m) {
		if(uname.equals("admin") && upass.equals("admin") )
			return "userHome";
		else
		    return "login";
	}
	@RequestMapping("/register")
	public String register() {
		return "register";
	}

}
