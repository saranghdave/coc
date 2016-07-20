package com.sarang.coc;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//import com.habuma.spitter.service.SpitterService;

@Controller
public class HomeController {
	public static final int DEFAULT_SPITTLES_PER_PAGE = 25;
	// private SpitterService spitterService;

	/*
	 * @Inject public HomeController(SpitterService spitterService) {
	 * this.spitterService = spitterService; }
	 */

	@RequestMapping({ "/", "/login" })
	public ModelAndView showHomePage(Map<String, Object> model) {
		
		ModelAndView modelAndView = new ModelAndView("LoginPage");
		return modelAndView;
		//
	}
}
