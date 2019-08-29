package com.calisma.news;

import java.util.List;
import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model3.Haberler;

@Controller
public class HaberEkleController {
	
	SessionFactory sff = HibernateConnect.getSessionFactory();
	@RequestMapping(value = "/HaberEkle", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		Session sesi=sff.openSession();
		@SuppressWarnings("unchecked") //try cath gibi
		List<Haberler> lss =sesi.createQuery("from Haberler order by hid desc").setFirstResult(0).setMaxResults(10).list();
		model.addAttribute("data",lss);
	

		
		
		return "HaberEkle";
	}
	

}
