package com.AsmaSouad.choreTracker.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.AsmaSouad.choreTracker.models.User;
import com.AsmaSouad.choreTracker.services.JobService;
import com.AsmaSouad.choreTracker.services.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class JobController {
	@Autowired
	private JobService jobServ; 
	@Autowired
	private UserService userServ; 
	@GetMapping("/dashboard")
	public String dashboard(Model model,HttpSession s) {
		
	   	//Route guard

	   Long userId = (Long)s.getAttribute("user_id");
	 
	    if(userId == null) {
	    	return "redirect:/";
	    }else {
	    User loggedUser = userServ.findUser(userId);
			model.addAttribute("loggedUser",loggedUser);
		return "/Jobs/dashboard.jsp";
	   }
	}

}
