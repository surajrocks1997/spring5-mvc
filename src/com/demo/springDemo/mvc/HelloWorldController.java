package com.demo.springDemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "hello-world-form";
	}

	@RequestMapping("/processForm")
	public String processForm() {
		return "helloWorld";
	}

	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest req, Model model) {
		String theName = req.getParameter("studentName");

		theName = theName.toUpperCase();
		String result = "Yo! " + theName;

		model.addAttribute("message", result);

		return "helloWorld";
	}

	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {

		theName = theName.toUpperCase();
		String result = "Yo v3! " + theName;

		model.addAttribute("message", result);

		return "helloWorld";
	}
}
