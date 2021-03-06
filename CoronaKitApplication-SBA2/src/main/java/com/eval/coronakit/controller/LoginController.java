package com.eval.coronakit.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.eval.coronakit.entity.User;

@Controller
public class LoginController {
	
	@RequestMapping("/custom-login")
	public String login() {
		return "login-form";
	}	 
	
	@RequestMapping("/custom-error")
	public String error() {
		return "error-page";
	}
	
	@GetMapping("/register-save")
	public ModelAndView showRegisterationForm() {
		return new ModelAndView("register", "userDetails", new User());
	}

	//Only to expose logic for New User Registration. As we are not supposed to add any additional classes(Controllers/Services etc).
	@PostMapping("/register-save")
	public ModelAndView doRegisteration(@ModelAttribute("userDetails") User user) {
		User newUser = new User();
		newUser.setUsername(user.getUsername());
		newUser.setPassword(user.getPassword());
		newUser.setContact(user.getContact());
		newUser.setEmail(user.getEmail());
		//userDetailsService.saveUser(newUser); Service not added as it is not required to be added as part of SBA. Just exposing logic.
		return new ModelAndView("index", "msg", "User got registered! with ID#" + user.getUsername());
	}
}
