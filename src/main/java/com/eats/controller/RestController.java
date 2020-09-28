package com.eats.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eats.model.User;
import com.eats.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;


@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService userService;
	
@GetMapping("/")
 public String hello() {
	 return "this is home page";
 }
	
 @GetMapping("/saveuser")
 public String saveUser(@RequestParam String username,@RequestParam String firstname,@RequestParam String lastname, @RequestParam String password ) {
	 User user = new User(username,firstname,lastname,password);
	 userService.saveMyUser(user);
	return "user saved";
 }

}
