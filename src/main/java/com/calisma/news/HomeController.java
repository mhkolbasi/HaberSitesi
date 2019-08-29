package com.calisma.news;

import java.util.List;
import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import model3.Haberler;

@Controller
public class HomeController {
	
	
	SessionFactory sff = HibernateConnect.getSessionFactory();
	int editID =0;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		Session sesi=sff.openSession();
		@SuppressWarnings("unchecked") //try cath gibi
		List<Haberler> lss =sesi.createQuery("from Haberler order by hid desc").setFirstResult(0).setMaxResults(10).list();
		model.addAttribute("data",lss);
		
		return "home";
	}
	

	@RequestMapping (value = "newsInsert", method = RequestMethod.POST)
	public String userInsert(Haberler hb) {
		
		Session sesi = sff.openSession();
		Transaction tr = sesi.beginTransaction();
		int id =(Integer) sesi.save(hb);
		if(id>0) {
			
		}
		
		tr.commit();
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/delete/{haberId}", method = RequestMethod.GET)
	public String delete(@PathVariable int haberId) {
	
		Session sesi = sff.openSession();
		Transaction tr =sesi.beginTransaction();
		
		Haberler hb = sesi.load(Haberler.class, haberId);
		hb.setHid(haberId);
		sesi.delete(hb);
		tr.commit();
		
		return "redirect:/";
		
	}
	
	@RequestMapping(value = "/edit/{haberId}", method = RequestMethod.GET)
	public String edit(@PathVariable int haberId ,Model model) {
	
		editID = haberId;
		
		Session sesi = sff.openSession();	
		
		Haberler hb = sesi.load(Haberler.class, haberId);
	
		model.addAttribute("hb",hb);
		
		
		return "HaberEkle";
		
	}
	
	
	@RequestMapping(value = "edit/newsEdit", method = RequestMethod.POST)
	public String userEdit(Haberler hb) {
	
		
		Session sesi = sff.openSession();	
		Transaction tr =sesi.beginTransaction();
	
		
		hb.setHid(editID);
		
		sesi.update(hb);
		
	
		tr.commit();
		
		
		return "redirect:/";
		
	}
}
