package com.bebe.spring;

//二쇱꽍���삙
//0705 二쇱꽍���삙�엯�땲�떎.
//0705二쇱꽍 �썑嫄댁엯�땲�떎.
//0705二쇱꽍 �젙�쁽�엯�땲�떎.
//0705�씪二쇱꽍 �삤�슜�슧�엯�땲�떎.
//0705二쇱꽍 �씠�닔�븞�엯�땲�떎.
//0705二쇱꽍 �쟾�삎吏꾩엯�땲�떎.
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "admin/user_mng";
	}

}
