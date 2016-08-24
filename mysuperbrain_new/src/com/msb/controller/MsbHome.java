package com.msb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.User;

@Controller
public class MsbHome {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "index";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		return "index";
	}
	@RequestMapping(value = "tests/{client}", method = RequestMethod.GET)
	public ModelAndView tests(@PathVariable String client) {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("client",client);
		modelAndView.setViewName("test_categories");
		return modelAndView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		User userData = (User) session.getAttribute("Student");
		if (userData != null)
			return new ModelAndView("index");
		else
			return new ModelAndView("login", "user", new User());
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession session) {
		User userData = (User) session.getAttribute("Student");
		if (userData != null)
			return new ModelAndView("index");
		else
			return new ModelAndView("register", "user", new User());
	}

	@RequestMapping(value = "/forgot", method = RequestMethod.GET)
	public ModelAndView forgotpwd(HttpSession session) {
		User userData = (User) session.getAttribute("Student");
		if (userData != null)
			return new ModelAndView("index");
		else
			return new ModelAndView("frgtpwd");

	}

	@RequestMapping(value = "/register-landing", method = RequestMethod.GET)
	public ModelAndView registerSuccess() {

		return new ModelAndView("register-landing");

	}
	

}
