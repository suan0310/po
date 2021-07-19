package com.bebe.spring.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.admin.service.AdminService;
import com.bebe.spring.vo.OptionsVO;
import com.bebe.spring.vo.OrdersSearchVO;
import com.bebe.spring.vo.OrdersVO;
import com.bebe.spring.vo.ProductOptionsVO;
import com.bebe.spring.vo.ProductSearchVO;
import com.bebe.spring.vo.UsersVO;

@Controller
@RequestMapping(value="admin")
public class AdminController {

	@Resource (name="adminService")
	private AdminService adminService;

	//-------------------------------------------- 관리자 정보 페이지 --------------------------------------------
	//관리자 정보 페이지 첫 화면
	@RequestMapping(value="/admin_info", method = RequestMethod.GET)
	public String adminInfoGet(HttpServletRequest req) {
		System.out.println("관리자 인포 GET 진입");
		

        HttpSession session = req.getSession();
        session.setAttribute("id", "admin123");

		return "/admin/admin_info";
	}	
	
	//관리자 정보 페이지에서 비밀번호 변경 눌렀을때
	@RequestMapping(value="/admin_info", method = RequestMethod.POST)
	public ModelAndView adminInfoPost(String passwd) {
		System.out.println("관리자 인포 POST 진입");
		
		adminService.updatePasswd(passwd);		
		ModelAndView mv = new ModelAndView("/admin/admin_info");
		if(adminService.updatePasswd(passwd) > 0)			
			mv.addObject("success","1");
		else mv.addObject("success", "0");
		
		return mv;
	}	
	
	//-------------------------------------------- 주문 관리 페이지 --------------------------------------------
	@RequestMapping(value="/order_mng", method = RequestMethod.GET)
	public String adminOrdermngGet() {
		System.out.println("관리자 주문관리 GET 진입");
		return "/admin/order_mng";
	}	
	
	//주문 관리 페이지에서 검색버튼 눌렀을때
	@RequestMapping(value="/order_mng", method = RequestMethod.POST)
	public ModelAndView adminOrdermngPost(OrdersSearchVO osVo) {
		System.out.println("관리자 주문관리 POST 진입");

		List<OrdersVO> oVo =  adminService.selectOrdersList(osVo);
		
		ModelAndView mv = new ModelAndView("/admin/order_mng");
		mv.addObject("list", oVo);
		
		return mv;
	}	
	
	
	//주문 관리 페이지에서 배송 수정버튼 눌렀을때
	@RequestMapping(value="/sts_update", method = RequestMethod.POST)
	public ModelAndView adminOrderStsPost(OrdersVO orderVo) {
		System.out.println("관리자 주문관리 POST 진입");
		
		
		adminService.updateOrderSts(orderVo);
		
		ModelAndView mv = new ModelAndView("/admin/order_mng");
		return mv;
	}	
	

	//-------------------------------------------- 상품 추가 페이지 --------------------------------------------
	//상품 추가 페이지 첫 화면
	@RequestMapping(value="/product_add", method = RequestMethod.GET)
	public String adminProductaddGet() {
		System.out.println("관리자 상품추가 GET 진입");
		return "/admin/product_add";
	}	
	
	//상품 추가 페이지에서 추가버튼 눌렀을 때
	@RequestMapping(value="/product_add", method = RequestMethod.POST)
	public String adminProductaddPost(ProductOptionsVO productOpVo) {
		System.out.println("관리자 상품관리 POST 진입");
		adminService.insertProduct(productOpVo);
		System.out.println(productOpVo.toString());
		
		return "/admin/product_add";
	}	
	
	
	//-------------------------------------------- 재고 관리 페이지 --------------------------------------------
	//재고 관리 페이지 첫 화면
	@RequestMapping(value="/product_mng", method = RequestMethod.GET)
	public String adminPoductmngGet() {
		System.out.println("관리자 재고관리 GET 진입");
		return "/admin/product_mng";
	}	
	
	@RequestMapping(value="/product_mng", method = RequestMethod.POST)
	public String adminPoductmngPost() {
		System.out.println("관리자 재고관리 POST 진입");
		return "/admin/product_mng";
	}	
		
	
	//재고관리 페이지에서 재고 검색했을때
	
	@RequestMapping(value="/searchproduct", method = RequestMethod.POST)
	public ModelAndView adminPoductmngSearchPost(ProductSearchVO psVo) {
		System.out.println("관리자 재고관리 POST 진입");
		Map<String, Object> map = new HashMap<>();
		map.put("productlist", adminService.selectProductList(psVo));
		map.put("optionlist", adminService.selectOptions());
		map.put("psVo", psVo);

		System.out.println("관리자 재고관리 POST 진입3");
		ModelAndView mv = new ModelAndView("/admin/product_mng");
		mv.addObject("map", map);	
		
		return mv;
	}	
	
	
	//재고 관리 페이지 - 삭제 버튼 눌렀을 때
	@RequestMapping(value="/deleteProduct", method = RequestMethod.POST)
	public ModelAndView adminPoductmngDeletePost(int[] checkproductno, ProductSearchVO psVo) {		
		System.out.println(checkproductno);
		adminService.deleteProduct(checkproductno);	
		adminService.deleteOptions(checkproductno);				

		HashMap<String, Object> map = new HashMap<>();
		map.put("productlist", adminService.selectProductList(psVo));
		map.put("optionlist", adminService.selectOptions());
		
		ModelAndView mv = new ModelAndView("/admin/product_mng");		
		mv.addObject("map", map);	
		return mv;
	}	
	
	//재고관리 페이지 - 옵션추가 버튼 눌렀을때
	@RequestMapping(value="/productMngOption", method = RequestMethod.GET)
    public ModelAndView popupGet(@RequestParam(value ="pno") int pNo,@RequestParam(value ="pname") String pName) {
		
		ModelAndView mav = new ModelAndView("/admin/product_mng_option");
		mav.addObject("pNo",pNo);
		mav.addObject("pName",pName);
	return mav;
    }
	
	//옵션 추가 팝업 - 추가 버튼 눌렀을때
	@RequestMapping(value="/productMngOptionAdd", method = RequestMethod.POST)
    public String popupPost(OptionsVO optionsVo,HttpServletRequest request) {		
		System.out.println("옵션추가진행");
		adminService.insertOptions(optionsVo);	
			
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
    }
	

	
	//-------------------------------------------- 유저 관리 페이지 --------------------------------------------
	//유저 관리 페이지 첫 화면
	@RequestMapping(value="/user_mng", method = RequestMethod.GET)
	public ModelAndView adminUsermngGet() {
		System.out.println("관리자 유저 관리 GET 진입");
		List<UsersVO> userlist = adminService.selectUsers();
		ModelAndView mv = new ModelAndView("/admin/user_mng");
		mv.addObject("userlist", userlist);		
		return mv;
	}		
	//오용욱 테스트
	//유저 관리 페이지 - 삭제 버튼 눌렀을 때
	@RequestMapping(value="/user_mng", method = RequestMethod.POST)
	public ModelAndView adminUsermngPost(String id) {
		System.out.println("관리자 유저관리 POST 진입");
		adminService.deleteUser(id);
		List<UsersVO> userlist = adminService.selectUsers();
		ModelAndView mv = new ModelAndView("/admin/user_mng");
		mv.addObject("userlist", userlist);		
		return mv;
	}	
		//주석ㄴㄴㄴㄴ
//주석 오용욱 테스트
}
