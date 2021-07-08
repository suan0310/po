package com.bebe.spring.login.controller;
//오용욱
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bebe.spring.login.service.LoginService;
import com.bebe.spring.login.vo.LoginVo;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	
	@Resource (name="LoginService")
	private LoginService loginService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String loginGet() {
		System.out.println("로그인페이지 이동");
		return "/login/login";
	}	
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String loginPost(LoginVo loginVo) {
		System.out.println("로그인페이지 이동");
		int num = loginService.selectUser(loginVo);
		
		if(num == 1)System.out.println("로그인성공");
		else System.out.println("로그인실패");		
		return "/login/login";
	}	
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET) 
	public String signupGet() { 
	System.out.println("회원가입페이지 이동");	 
	 return "/login/signup";
	 }
	 

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupPost(LoginVo loginVo) {
		System.out.println("회원가입진행");
		
		
		loginService.insertUser(loginVo);  /*select * from fruits */
		
		return "/login/login";
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
