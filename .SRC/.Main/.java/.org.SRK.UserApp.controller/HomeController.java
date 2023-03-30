package org.SRK.UserApp.controller;

import javax.servlet.http.HttpSession;

import org.SRK.UserApp.dto.User;
import org.SRK.UserApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes(names = {"user"})
public class HomeController {
	@Autowired
	private UserService service;
	
	@RequestMapping("/load")
	public ModelAndView load(@RequestParam int choice, ModelAndView view) {
		if(choice==1) {
		view.setViewName("register");
		view.addObject("user", new User());
		}
		return view;
	}
	@RequestMapping(value = "/reg")
	public ModelAndView reg(@ModelAttribute User u,ModelAndView view) {
		u=service.saveUser(u);
		if(u!=null) {
			view.setViewName("login");
			return view;
		}
		else {
			view.setViewName("register");
			return view;
		}
		
	}
	@RequestMapping(value = "/loginuser",method = RequestMethod.POST)
	public String login(@RequestParam long phon,@RequestParam String pasw,Model model) {
		User u=service.verify(phon, pasw);
		if(u!=null) {
			model.addAttribute("user", u);
			return "home";
		}
		else {
			model.addAttribute("masg", "invalid password or phone ");
			return "login";
		}
	}
//	@RequestMapping("/profile")
//	public String profile(@ModelAttribute User user,Model model) {
//		model.addAttribute("user", user);
//		return "profile";
//		
//	}
	
//	@RequestMapping(value = "/profile",method = RequestMethod.GET)
//	public ModelAndView profile(@ModelAttribute User user,ModelAndView view)
//	{
//		view.setViewName("profile");
//		view.addObject("user", user);
//		return view;
//	}
	@RequestMapping(value = "/profile")
	public String prof(@RequestParam int id,Model model) {
		User user=service.fetchUser(id);
		model.addAttribute("user", user);
		return "profile";
	}
	@RequestMapping("/edit")
	public String ed(@RequestParam int id,Model model) {
		User user=service.fetchUser(id);
		model.addAttribute(user);
		return "edit";
	}
	@RequestMapping(value = "/ed")
	public String up(@ModelAttribute User u,Model model) {
		u=service.updateUser(u);
		model.addAttribute("masg", "updated successfully");
		return "login";
	}
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam int id,HttpSession session,Model model) {
		boolean u=service.delete(id);
		session.invalidate();
		model.addAttribute("masg", "deleted successfully");
		if(u==true) {
		return "login";
		}
		return "home";
	}
	@RequestMapping(value = "/back")
	public String back() {
		return "home";
	}
}
