package com.sarang.coc;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sarang.dto.Item;

@Controller
public class ItemController {

	@RequestMapping(value="/item", method=GET)
	public @ResponseBody Item authenticate(@RequestParam("code") String code) {
		
//		ModelAndView modelAndView = new ModelAndView("Item");
//		modelAndView.addObject("name", "abcd");
//		return modelAndView;
		
		Item item = new Item();
		item.setCode(code);
		item.setName("abcd");
		
		return item;
	}
}
