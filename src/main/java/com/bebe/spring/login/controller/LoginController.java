package com.bebe.spring.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/login")
public class LoginController {
	
	@RequestMapping(value = "login")
	public String loginGet() {
		System.out.println("로그인페이지 이동");
		return "/login/login";
	}
	
	@RequestMapping(value = "signup")
	public String signupGet() {
		System.out.println("회원가입페이지 이동");
		return "/login/signup";
	}
	@RequestMapping(value = "findid")
	public String findidGet() {
		System.out.println("아이디 찾기 페이지 이동");
		return "/login/findid";
	}
	@RequestMapping(value = "findpasswd")
	public String findpasswdGet() {
		System.out.println("비밀번호 찾기 페이지 이동");
		return "/login/findpasswd";
	}
	@RequestMapping(value = "constent")
	public String constentGet() {
		System.out.println("약관동의 페이지 이동");
		return "/login/constent";
	}

}
