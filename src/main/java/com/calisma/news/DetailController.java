package com.calisma.news;

import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model3.Haberler;

@Controller
public class DetailController {
	
	SessionFactory sf = HibernateConnect.getSessionFactory();

	
	@RequestMapping(value = "/Detail/{hid}", method = RequestMethod.GET)
	public String detail(@PathVariable int hid,Locale locale, Model model) {
		Session session = sf.openSession();
		Haberler nws = session.load(Haberler.class, hid);
		model.addAttribute("data", nws);
		
		return "Detail";
		
	}
	

}
