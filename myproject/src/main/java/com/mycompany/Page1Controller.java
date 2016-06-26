package com.mycompany;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.model.Preferences;
import com.mycompany.model.User;

@Controller
public class Page1Controller {

	@RequestMapping("/page1.*")
	public String redirectToPage1(Model model) {
		
		String [] listOfCity = new String [] {"Cosenza","Napoli","Catanzaro","Bari"};
		model.addAttribute("user",new User());
		model.addAttribute("listOfCity",listOfCity);
		return "page1";
		
	}
	
	@RequestMapping("/page2.*")
	public String redirectToPage2(Model model) {
		
		String [] listOfCity = new String [] {"Cosenza","Napoli","Catanzaro","Bari"};
		model.addAttribute("user",new User());
		model.addAttribute("listOfCity",listOfCity);
		return "page2";
		
	}
	
	@RequestMapping("/page3.*")
	public String redirectToPage3(Model model) {
		
		String [] listOfCity = new String [] {"Cosenza","Napoli","Catanzaro","Bari"};
		boolean multiple = false;
		int size = 3;
		
		model.addAttribute("user",new User());
		model.addAttribute("listOfCity",listOfCity);
		model.addAttribute("multiple",multiple);
		model.addAttribute("size",size);
		return "page3";
		
	}
	
	@RequestMapping("/page4.*")
	public String redirectToPage4(Model model) {
		
		String [] listOfCity = new String [] {"Cosenza","Napoli","Catanzaro","Bari"};
		model.addAttribute("user",new User());
		model.addAttribute("listOfCity",listOfCity);
		return "page4";
		
	}
	
	@RequestMapping(value = "/login.*", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User user) {
	    return "result";
	}
}
