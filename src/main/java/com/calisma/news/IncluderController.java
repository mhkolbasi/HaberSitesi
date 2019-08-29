package com.calisma.news;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IncluderController {
	
	
	
	public static String page ="/";
	
	
	// footer
	@RequestMapping (value = "/nav", method = RequestMethod.GET)
	public String nav(Model model) {
		
		model.addAttribute("page",IncluderController.page);
		return "inc/nav";
		
		
	}
	
	
	@RequestMapping (value = "/footer", method = RequestMethod.GET)
	public String footer(Model model) {
		
		model.addAttribute("page",IncluderController.page);
		return "inc/footer";
		
		
	}
	
	
	
}
