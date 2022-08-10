package com.demo.springDemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		Student theStudent = new Student();

// 		to pre-poluate the form:
//		theStudent.setFirstName("John");
//		theStudent.setLastName("Doe");

		theModel.addAttribute("student", theStudent);
		return "student-form";
	}

	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student theStudent) {
		System.out.println(theStudent.getFirstName());
		System.out.println(theStudent.getLastName());

		return "student-confirmation";

	}
}
