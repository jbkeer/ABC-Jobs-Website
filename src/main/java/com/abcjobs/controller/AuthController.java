package com.abcjobs.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abcjobs.model.UserDetails;
import com.abcjobs.model.Users;
import com.abcjobs.service.UserDetailsService;
import com.abcjobs.service.UsersService;

@Controller
public class AuthController {
	@Autowired
	// @Qualifier(value = "UsersRepository")
	private UsersService us;
	
	@Autowired
	private UserDetailsService ud;
	
	@RequestMapping(value="/registration")
	public ModelAndView registration(HttpSession session) throws Exception {
		return new ModelAndView("registration/registration"); 
	}
	
	@RequestMapping(value="/registration", method = RequestMethod.POST)
	public String registration(
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName,
			Users user, UserDetails userDetails, Model model) throws Exception {
		try {
			user.setEmail(email);
			user.setPassword(password);
			user.setRoleId("2");
			user.setEmailVerifiedAt(java.time.LocalDate.now().toString());
			user.setCreatedAt(java.time.LocalDate.now().toString());
			us.register(user);
			
			userDetails.setUserId(us.getLastUser().split(",")[0]);
			userDetails.setFirstName(firstName);
			userDetails.setLastName(lastName);
			ud.register(userDetails);
	
			model.addAttribute("email", user.getEmail());
			return "registration/thankyou";
		} catch (Exception e) {
			System.out.println(e);
		}
		model.addAttribute("errMsg", "This email is already taken");
		return "registration/registration";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) throws Exception {
		return new ModelAndView("login/login"); 
	}
	
	// Login Process
	@RequestMapping(value="/login", method = RequestMethod.POST) 
	public ModelAndView login(
			@ModelAttribute("login") Users user, Model model, 
			HttpServletRequest req, HttpServletResponse res) {
	
		String rememberMe = req.getParameter("rememberMe");
		HttpSession session = req.getSession();
		Users isLogin = us.login(user);
		
		if(isLogin != null) {
			if(rememberMe != null) { // Remember me is checked
				Cookie eCookie = new Cookie("email", isLogin.getEmail());
				eCookie.setMaxAge(10 * 60); // 10 minutes
				res.addCookie(eCookie);
				
				Cookie iCookie = new Cookie("userId", String.valueOf(isLogin.getUserId()));
				iCookie.setMaxAge(10 * 60);
				res.addCookie(iCookie);
			}
			
			session.setAttribute("email", isLogin.getEmail());
			session.setAttribute("userId", isLogin.getUserId());
			session.setAttribute("roleId", isLogin.getRoleId());
			session.setAttribute("isLogin", true);
			return new ModelAndView("redirect:/dashboard");
		}
		
		String msg = "This account doesn't exist!";
		model.addAttribute("message", msg);
		return new ModelAndView("login/login");
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletResponse res, HttpSession session) throws Exception {
		session.invalidate();

		Cookie eCookie = new Cookie("email", "");
		eCookie.setMaxAge(0); // 10 minute
		res.addCookie(eCookie);
		
		Cookie iCookie = new Cookie("userId", "");
		iCookie.setMaxAge(0);
		res.addCookie(iCookie);
		
		return "login/login"; 
	}

	@RequestMapping(value="/forgot-password")
	public ModelAndView forgotPassword(HttpServletResponse res) throws Exception {
		return new ModelAndView("login/forgot-password");  
	}
	
	@RequestMapping(value="/forgot-password", method = RequestMethod.POST) // forgot password logic
	public String forgotPassword(@RequestParam("emailAddress") String email, Model model, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		String checkEmail = us.checkEmail(email);
		
		if(checkEmail != null) {
			session.setAttribute("isReset", true);
			session.setAttribute("email", email);
			return "login/reset-password";
		}
				
		String msg = "This account doesn't exist!";
		model.addAttribute("message", msg);
		return "login/forgot-password";
	}
	
	@RequestMapping(value="/reset")
	public ModelAndView reset(Model model, HttpSession session) throws Exception {
		if((Boolean) session.getAttribute("isReset")) {
			return new ModelAndView("login/reset-password");  
		}
	
		String msg = "Please enter email address";
		model.addAttribute("message", msg);
		return new ModelAndView("login/forgot-password"); 
	}
	
	@RequestMapping(value="/reset", method = RequestMethod.POST) // reset password
	public String reset(@RequestParam("password") String password, Model model, HttpSession session) throws Exception {
		try {
			us.updatePassword(password, (String) session.getAttribute("email"));
			
			String msg = "Password has been changed";
			model.addAttribute("scMessage", msg);
			session.invalidate();
		} catch (Exception e) {
			System.out.println(e);
			return "login/reset-password";
		}
		
		return "login/login";
	}

}
