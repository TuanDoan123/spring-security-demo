package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@GetMapping("/home")
	public String showHome() {

		return "home";
	}

	@RequestMapping("/log/a")
	public String showPage() {
		return "login";
	}

	@RequestMapping("function/ilove")
	public String function() {
		return "function-test";
	}

	@GetMapping("footer")
	public String fshowHome() {

		return "my-footer";
	}

	@GetMapping("test")
	public String bshowHome() {

		return "test";
	}

	@GetMapping("if")
	public String ifa() {

		return "if-student-test";
	}
}
