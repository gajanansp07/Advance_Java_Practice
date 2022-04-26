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
	@RequestMapping("/useresg")
	public String useresg(@RequestParam String uname,@RequestParam String upass, 
			@RequestParam String uemail, @RequestParam String Gender, 
			@RequestParam String country, @RequestParam String umbno, 
			@RequestParam String uadd , Model m) {
		m.addAttribute("uname", uname);
		m.addAttribute("upass", upass);
		m.addAttribute("uemail", uemail);
		m.addAttribute("Gender", Gender);
		m.addAttribute("country", country);
		m.addAttribute("umbno", umbno);
		m.addAttribute("uadd", uadd);
		
		    return "userRstr";
	}

}
