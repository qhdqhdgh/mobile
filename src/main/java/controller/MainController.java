package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.MainService;
import vo.ListVO;
import vo.OrderVO;
import vo.UserVO;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;		
	
	//메인 페이지
	@RequestMapping("/index.do")
	public String index(HttpSession session, Model model) {
//		if(session.getAttribute("session") == null) {
//			model.addAttribute("msg", "로그인이 필요한 서비스 입니다.");
//			model.addAttribute("url", "/pp/login.do");
//			return "alert";
//		}
		return "index";
	}
	
	//로그인 페이지
	@RequestMapping("/login.do")
	public String login() {
				
		return "login";
	}
	
	//회원가입 페이지
	@RequestMapping("/signup.do")
	public String signup() {
				
		return "signup";
	}
	
	//판매오더 조회 페이지
	@RequestMapping("/BPsearch.do")
	public String BPsearch(HttpSession session, Model model, ListVO listVO) {
//		if(session.getAttribute("session") == null) {
//			model.addAttribute("msg", "로그인이 필요한 서비스 입니다.");
//			model.addAttribute("url", "/pp/login.do");
//			return "alert";
//		}		
		
		List<ListVO> ListPro = mainService.ListPro(listVO);
		model.addAttribute("ListPro", ListPro);	
		
		return "BPsearch";
	}	
	
	@RequestMapping("/OrderList.do")
	public String OrderList(HttpSession session, Model model, OrderVO ordervo) {
//		if(session.getAttribute("session") == null) {
//			model.addAttribute("msg", "로그인이 필요한 서비스 입니다.");
//			model.addAttribute("url", "/pp/login.do");
//			return "alert";
//		}
		
		//Detail화면을 위한 검색조건 저장
		session.setAttribute("cardcode", ordervo.getCardCode());
		session.setAttribute("startdate", ordervo.getStartDate());
		session.setAttribute("enddate", ordervo.getEndDate());
		session.setAttribute("docstatus", ordervo.getDocStatus());
		
		List<OrderVO> OrderList = mainService.OrderList(ordervo);
		model.addAttribute("OrderList", OrderList);	
		return "OrderList";
	}
	
	@RequestMapping("/OrderDetail.do")
	public String OrderDetail(HttpSession session, Model model, OrderVO ordervo
			, @RequestParam(name="VisOrder", required = false) int VisOrder) {
//		if(session.getAttribute("session") == null) {
//			model.addAttribute("msg", "로그인이 필요한 서비스 입니다.");
//			model.addAttribute("url", "/pp/login.do");
//			return "alert";
//		}
		ordervo.setVisOrder(VisOrder-1);
		ordervo.setCardCode((String)session.getAttribute("cardcode"));
		ordervo.setStartDate((String)session.getAttribute("startdate"));
		ordervo.setEndDate((String)session.getAttribute("enddate"));
		ordervo.setDocStatus((String)session.getAttribute("docstatus"));
		
		OrderVO OrderDetail = mainService.OrderDetail(ordervo);
		model.addAttribute("OrderDetail", OrderDetail);	
		
		return "OrderDetail";
	}
	
	/*
	 * @RequestMapping("/BPAjax.do") public String BPAjax(HttpSession session, Model
	 * model, ListVO listVO , @RequestParam(name="test", required = false) String
	 * test) { // if(session.getAttribute("session") == null) { //
	 * model.addAttribute("msg", "로그인이 필요한 서비스 입니다."); // model.addAttribute("url",
	 * "/pp/login.do"); // return "alert"; // }
	 * 
	 * List<ListVO> ListPro = mainService.ListPro(listVO);
	 * model.addAttribute("ListPro", ListPro);
	 * 
	 * List<ORDRVO> OrderList = mainService.OrderList();
	 * model.addAttribute("OrderList", OrderList); return "BPAjax"; }
	 */
	
	//로그아웃 기능
	@RequestMapping("/logout.do") 
	public String logout(HttpSession session) {
		session.invalidate();
		return "signup";
	}
	
	//로그인 기능
	@RequestMapping("/LoginPro.do")
	public String LoginPro(Model model, UserVO userVO, HttpSession session) {
		
		UserVO LoginPro = mainService.LoginPro(userVO);
		model.addAttribute("LoginPro", LoginPro);
		
		if(LoginPro == null) {
			model.addAttribute("msg", "아이디 혹은 비밀번호가 일치하지 않습니다.");
			model.addAttribute("url", "/pp/login.do");
			return "alert";
		}else {
			session.setAttribute("session", LoginPro);			
			model.addAttribute("msg", "로그인에 성공하였습니다");
			model.addAttribute("url", "/pp/index.do");
			return "alert";
		}
		
	}	
	
	//회원가입 페이지
	@RequestMapping("/JoinForm.do")
	public String JoinForm() {
				
		return "JoinForm";
	}
	
	//회원가입 기능
	@RequestMapping("/JoinPro.do")
	public String JoinPro(Model model, UserVO userVO) {
		
		int JoinPro = mainService.JoinPro(userVO);
		model.addAttribute("JoinPro", JoinPro);
		if(JoinPro == 0) {
			model.addAttribute("msg", "회원가입에 실패하였습니다.");
			model.addAttribute("url", "/pp/JoinForm.do");
			return "alert";
		}else {
			return "home";
		}		
	}
	
	@RequestMapping("/qrtest.do")
	public String qrtest() {
				
		return "qrtest";
	}
	
}
