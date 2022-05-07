package com.Ganesh.Controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyControler {

	@RequestMapping("/")
	public String myhome() {
		return "myhome";
	}
	@RequestMapping("/ho")
	public String ho() {
		return "ho";
	}
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

}
