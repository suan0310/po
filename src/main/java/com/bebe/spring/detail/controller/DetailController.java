package com.bebe.spring.detail.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bebe.spring.detail.service.DetailService;
import com.bebe.spring.vo.ProductVO;

@Controller
@RequestMapping(value = "/productdetail")
public class DetailController {

	@Resource(name = "detailService")
	private DetailService detailService;


	@RequestMapping(value = "", method = RequestMethod.GET)
	public String detail(Model model, ProductVO vo, HttpSession session) {
		session.setAttribute("userid", "admin");

		List<ProductVO> listMain = detailService.selectDetailMain(vo);
		List<ProductVO> listOne = detailService.selectOne(vo);
		List<ProductVO> listAll = detailService.selectReview(vo);
		List<ProductVO> listAllQuestion = detailService.selectAllQuestion(vo);
		List<ProductVO> listOptions = detailService.selectOptions(vo);

		double avg = Math.round(detailService.selectStarAvg(vo) * 10) / 10.0;
		List<ProductVO> listStar = detailService.starCnt(vo);
		int starTotal = detailService.starTotal(vo);
		model.addAttribute("detMain", listMain);
		model.addAttribute("rvOne", listOne);
		model.addAttribute("rvAll", listAll);
		model.addAttribute("qsAll", listAllQuestion);
		model.addAttribute("avg", avg);
		model.addAttribute("rvStar", listStar);
		model.addAttribute("sTotal", starTotal);		
		model.addAttribute("detOptions", listOptions);

		System.out.println("모델데이터 전송");
		return "/product/detail";
	}

	@RequestMapping(value="/pop", method = RequestMethod.GET )
	public String pop(Model model, ProductVO vo, HttpSession session, @RequestParam("userid") String userid) {
		List<ProductVO> listOneQuestion = detailService.selectOneQuestion(vo);
		model.addAttribute("qOne", listOneQuestion);
		return "/product/pop";
	}
	
	@ResponseBody
	@RequestMapping(value="/qna.del", method= RequestMethod.GET)
	public String delQna(Model model, ProductVO vo, @RequestParam("productNo") String productNo) {
		Integer rs = detailService.delAnswer(vo);
		if(rs==1) { System.out.println("delAnswer 성공");}
		rs= detailService.delQuestion(vo);
		if(rs==1) { System.out.println("delQuestion 성공");}
		return " ";
	}
	
	@ResponseBody
	@RequestMapping(value = "/updateQuestion", method = RequestMethod.GET)
	public String updateQuestion(ProductVO vo) {
		Integer rs = detailService.updateQuestion(vo);
		
		if (rs == 1) {
			System.out.println("업데이트 성공!");
		} else {
			System.out.println("실패!");
		}		
		return " ";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/updateAnswer", method = RequestMethod.GET)
	public String updateAnswer(ProductVO vo) {
		Integer rs = detailService.updateAnswer(vo);
		
		if (rs == 1) {
			System.out.println("업데이트 성공!");
		} else {
			System.out.println("실패!");
		}
		return " ";
	}
	
	@RequestMapping(value = "/reivew.do", method = RequestMethod.POST)
	public ModelAndView insertReview(ProductVO vo, @RequestParam("productNo") String productNo) {
		ModelAndView mv = new ModelAndView();
		Integer rs = detailService.insertReview(vo);
		
		if (rs == 1) {
			System.out.println("성공!");
		} else {
			System.out.println("실패!");
		}
		mv.setViewName("redirect:http://localhost/productdetail?productNo=" + productNo);
		return mv;
	}

	@RequestMapping(value = "/question.do", method = RequestMethod.POST)
	public ModelAndView insertQuestion(ProductVO vo, @RequestParam("productNo") String productNo) {
		ModelAndView mv = new ModelAndView();
		Integer rs = detailService.insertQuestion(vo);
		if (rs == 1) {
			System.out.println("성공!");
		} else {
			System.out.println("실패!");
		}
				
		rs = detailService.insertAnswer(vo);
		mv.setViewName("redirect:http://localhost/productdetail?productNo=" + productNo);
		return mv;
	}

	@RequestMapping(value="/reviewManage", method = RequestMethod.GET)
	public String reviewManage(Model model, ProductVO vo, @RequestParam("productNo") String productNo) {
		System.out.println("reviewManage 이동");
		List<ProductVO> listRvBest1 = detailService.selectRvBest1(vo);
		List<ProductVO> listRvBest0 = detailService.selectRvBest0(vo);
		
		model.addAttribute("RvBest1", listRvBest1);
		model.addAttribute("RvBest0", listRvBest0);
		return "/product/reviewManage";
	}
	
	
	
	@RequestMapping(value="/updateRvBest1", method= RequestMethod.GET)
	public ModelAndView updateRvBest1(Model model, ProductVO vo, int[] cntRvNo, @RequestParam("productNo") String productNo) {
		System.out.println("베스트리뷰 등록");
		detailService.updateRvBest1(cntRvNo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:http://localhost/productdetail/reviewManage?productNo="+productNo);
		return mv;
	}

	
	@RequestMapping(value="/updateRvBest0", method= RequestMethod.GET)
	public ModelAndView updateRvBest0(Model model, ProductVO vo, int[] cntRvNo, @RequestParam("productNo") String productNo) {
		System.out.println("베스트리뷰 삭제");
		detailService.updateRvBest0(cntRvNo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:http://localhost/productdetail/reviewManage?productNo="+productNo);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/options.size")
	public Map<String, List<ProductVO>> selectSecondOptions(Model model, ProductVO vo) {
		Map<String, List<ProductVO>> map = new HashMap<String, List<ProductVO>>();
		List<ProductVO> selectSecondOptions = detailService.selectSecondOptions(vo);
		map.put("size", selectSecondOptions);

		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/options.stock")
	public Map<String, Integer> selectStock(Model model, ProductVO vo) {

		Map<String, Integer> map = new HashMap<String, Integer>();
		Integer stock = detailService.selectStock(vo);
		map.put("stock", stock);

		return map;
	}
	
	//cart
	@ResponseBody
	@RequestMapping(value="/insertCart", method = RequestMethod.GET)
	public String updateCart(ProductVO vo, Model model, @RequestParam("id") String id ) {
		detailService.insertCart(vo);
		return "";
	}
	
	//order   리턴에 오더매핑주세여
	@RequestMapping(value="/order", method = RequestMethod.GET)
	public String order(ProductVO vo, Model model) {
		Integer price = detailService.selectProductPrice(vo);
		model.addAttribute("order", vo);
		return "/product/order";
	}
	
}
