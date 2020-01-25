package com.iet.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iet.demo.beans.Student;
import com.iet.demo.service.StudentService;

@Controller
public class WelcomeController {
	@Autowired StudentService studentService;
	@Autowired BCryptPasswordEncoder bCryptPasswordEncoder;
	@RequestMapping("/")
	public String forHome() {
		return "index";
	}
	@GetMapping("/signup")
	public String forSignUp(Model model) {
		model.addAttribute("command",new Student());
		return "signup";
	}
	@GetMapping("/signin")
	public String forGetLogin() {
		return "signin";
	}
	@PostMapping("/signup")
	public String forPostSignUp(Model model,@ModelAttribute("command")Student student) {
		student.setPassword(bCryptPasswordEncoder.encode(student.getPassword()));
		student=studentService.addStudent(student);
		if(student!=null) {
			model.addAttribute("msg","Student register successfully...");
			model.addAttribute("command",new Student());
			return "signup";
		}
		model.addAttribute("errmsg","Student register unsuccessfully...");
		return "signup";
	}
	@GetMapping("auth/list")
	public String forList() {
		return "auth/list";
	}
}
