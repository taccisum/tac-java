package com.tac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/Hello")
public class HelloWorldController {
	
	@RequestMapping("/index")
	public String view() {
		return "index";
	}
	
	
	@RequestMapping("/index1")
	@ResponseBody
	public String index1() {
		return "hello";
	}
}