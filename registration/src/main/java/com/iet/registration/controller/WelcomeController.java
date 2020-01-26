package com.iet.registration.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.iet.registration.bean.User;
import com.iet.registration.service.UserService;

@Controller
public class WelcomeController {
	private static String UPLOADED_FOLDER = "./src/main/resources/static/avtar/";
	@Autowired UserService userService;
	@RequestMapping("/")
	public String forIndex() {
		return "index";
	}
	@RequestMapping("/signup")
	public String forSignup(Model model) {
		model.addAttribute("command", new User());
		return "registration";
	}
	@PostMapping("/signup")
	public String forPostSingup(Model model,@ModelAttribute("command")User user,@RequestParam("photo") MultipartFile file) {
		byte[] bytes;
		try {
			bytes = file.getBytes();
			Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
	        Files.write(path, bytes);
	        user.setAvtar(file.getOriginalFilename());
	        user=userService.addUser(user);
	        if(user!=null) {
	        	model.addAttribute("msg", "User register successfully...");
	        	return "registration";
	        }
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "registration";
	}
	@GetMapping("/list")
	public String forList(Model model) {
		List<User> list=userService.getAllUser();
		model.addAttribute("list",list);
		return "list";
	}
	@GetMapping("/user/{id}")
	public String forUserById(Model model,@PathVariable("id")int userId) {
		model.addAttribute("user", userService.getUser(userId));
		return "userInfo";
	}
}
