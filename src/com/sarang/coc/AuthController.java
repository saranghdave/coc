package com.sarang.coc;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping({ "/home" })
public class AuthController {

	@RequestMapping(value="/", method=GET)
	public ModelAndView authenticate(@RequestParam("username") String username, Model model) {
		
		ModelAndView modelAndView = new ModelAndView("Counter");
		modelAndView.addObject("username", username);
		return modelAndView;
	}
}
