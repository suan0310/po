package com.bebe.spring.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bebe.spring.user.service.userInfoService;
import com.bebe.spring.vo.UsersVO;

@Controller
@RequestMapping("/user/*")
public class userInfoController {	
	
	@Inject
	 userInfoService userInfoService;
	
	private static final Logger logger = LoggerFactory.getLogger(userInfoController.class);
	

	@RequestMapping(value ="/user_info", method = RequestMethod.GET)
	public String modifyGET() throws Exception {
		logger.info("modifyGET");
	
		return "/user/user_info";
	}
	
	@RequestMapping(value ="/user_info", method = RequestMethod.POST)
	public String modifyPOST(HttpSession session, UsersVO vo, RedirectAttributes ra) throws Exception {
		logger.info("modifyPOST");		
		userInfoService.modify(vo);
		session.invalidate();
		ra.addFlashAttribute("result", "updateOK");
		return "redirect:/user/user_info";
	}
}
