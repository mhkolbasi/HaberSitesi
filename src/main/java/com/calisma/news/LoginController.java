package com.calisma.news;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class LoginController {
	
	DB db = new DB();
	
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		IncluderController.page = "Login";
		
		
		return "Login";
		
	}
	
	
	@RequestMapping(value = "/girislogin", method = RequestMethod.POST)
	public String login(@RequestParam String umail, @RequestParam String upassword, HttpServletRequest req) {
	
		Useraccount ac = new Useraccount();
		
		try {
			
		String query= "Select * from  `useraccount`";
		PreparedStatement pr = db.connect(query);
		ResultSet rs = pr.executeQuery();
		
		while(rs.next()) {
			ac.setUid(rs.getInt("uid"));
			ac.setUmail(rs.getString("umail"));
			ac.setUpassword(rs.getString("upassword"));
			
		}
			
			System.out.println("Giris basarili !!");
		} catch (Exception e) {
			System.err.println("Giris Hatasý : " + e);
		}
		
		
		if(umail.equals(ac.getUmail()) && upassword.equals(ac.getUpassword())) 
		{
			// session create
			
			req.getSession().setAttribute("user_id", 10);
			return "redirect:/HaberEkle";
			
			// mail:muhammed@kolbasi.com
			// sifre:asdf
			
		}
		
			
		return "Login";
	}
	
	
}
