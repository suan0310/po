package com.bebe.spring.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bebe.spring.login.service.LoginService;
import com.bebe.spring.vo.UsersVO;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet() {
		System.out.println("로그인페이지 이동");
		return "/login/login";
	}	

	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(UsersVO usersVO, HttpSession session, RedirectAttributes redirectAttr) {
		System.out.println("로그인페이지 기능 수행");
		System.out.println("userid"+usersVO);
		UsersVO loginUsersVO = loginService.selectUsers(usersVO);
		System.out.println("userid"+loginUsersVO);
		
		if (loginUsersVO != null) {
			System.out.println("로그인 성공");
			session.setAttribute("selectUsers", 1);
			session.setAttribute("sessionUser", loginUsersVO);
			System.out.println(session+"userid"+loginUsersVO);
			return "redirect:/index/index";
		} else {
			System.out.println("실패");
			redirectAttr.addFlashAttribute("errorMessage", "아이디나 비밀번호가 틀렸습니다.");
			return "/login/login";
		}
	}	
	
	//세션초기화
		@RequestMapping(value = "/logout")
		public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:/index/index";
		}
	
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET) 
	public String signupGet() { 
	System.out.println("회원가입페이지 이동");	 
	 return "/login/signup";
	 }
	 

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupPost(UsersVO usersVO) {
		System.out.println("회원가입 기능 수행");
		
		/*
		 * PrintWriter out = response.getWriter(); if(loginService.idCheck(usersVO)==1)
		 * { out.println(); }
		 */
		loginService.insertUsers(usersVO);
		return "/login/login";
	}
	
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	@ResponseBody
	public String idChkPost(UsersVO usersVO) {
		System.out.println("아이디 중복체크 기능 수행");
		
		int result = loginService.idCheck(usersVO);
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}	
		/*
		 * loginService.insertUsers(usersVO); return "/login/login";
		 */
	}
	
	
	

	@RequestMapping(value = "/findid", method = RequestMethod.GET)
	public String findidGet() {
		System.out.println("아이디 찾기 페이지 이동");
		return "/login/find_id";
	}
	
	@RequestMapping(value = "/findid", method = RequestMethod.POST)
	public String findidPost(UsersVO usersVO, Model model) {
		System.out.println("아이디 찾기 기능 수행");
		
		UsersVO result = loginService.find_id(usersVO);
		
		if(result == null) {
			model.addAttribute("check", 1);
		}else {
			model.addAttribute("check", 0);
			model.addAttribute("id", result.getId());
		}
		return "/login/find_idOK";
		
	}

	@RequestMapping(value = "/findidOK", method = RequestMethod.GET)
	public String findidOKGet() {
		System.out.println("비밀번호 찾기 페이지 이동");
		return "/login/find_idOK";
	}
	
	
	@RequestMapping(value = "/findpasswd", method = RequestMethod.GET)
	public String findpasswdGet() {
		System.out.println("비밀번호 찾기 페이지 이동");
		return "/login/find_passwd";
	}
	
	@RequestMapping(value = "/findpasswd", method = RequestMethod.POST)
	public String findpasswdPost(UsersVO usersVO, Model model) {
		System.out.println("비밀번호 찾기 기능 수행");
		UsersVO result = loginService.find_passwd(usersVO);
		
		if(result == null) { 
		    model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
		    model.addAttribute("passwd", result.getPasswd());
		}
		
		return "/login/find_passwdOK";
	
		
	}

	@RequestMapping(value = "/findpasswdOK", method = RequestMethod.GET)
	public String findpasswdOKGet() {
		System.out.println("비밀번호 찾기 페이지 이동");
		return "/login/find_passwdOK";
	}
	
	
	
	@RequestMapping(value = "/constent", method = RequestMethod.GET)
	public String constentGet() {
		System.out.println("약관동의 페이지 이동");
		return "/login/terms";
	}
	
	
	//***************************************소셜로그인
	@RequestMapping(value="/socailLogin", method = RequestMethod.GET)
	public String socialLogin(UsersVO usersVO, HttpSession session) {
		System.out.println(usersVO);
		String email = usersVO.getId();
		System.out.println(email);

		int rs = loginService.selectSocialLogin(usersVO);
		if(rs == 0) {
			int res = loginService.insertSocialLogin(usersVO);
			System.out.println("결과 : "+res);
		}

		session.setAttribute("UsersVO", usersVO);
		
		return "/index/index";
	}
	
	@RequestMapping(value="/naverCallback", method = RequestMethod.GET)
	public String naverCallback() {
		return "/login/naverCallback";
	}
	
}
