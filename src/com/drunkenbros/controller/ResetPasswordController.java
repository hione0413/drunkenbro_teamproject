package com.drunkenbros.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.drunkenbros.common.member.PassSecurity;
import com.drunkenbros.model.domain.Member;
import com.drunkenbros.model.service.MemberService;

@Controller
public class ResetPasswordController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/password/reset",method=RequestMethod.POST)
	@ResponseBody
	public String resetPassword(Member member) {
		PassSecurity passSecurity = new PassSecurity();
		String resultJson="";
		System.out.println("▶ 변경하기 원하시는 비밀번호 : "+member.getPass());
		System.out.println("▶ 변경하기 원하시는분의 Member_id : "+member.getMember_id());
		member = passSecurity.setHashPass(member);
		
		int result=memberService.changePassword(member);
		if(result==0) {
			resultJson = "{\"resultCode\":0}";
		}else {
			resultJson = "{\"resultCode\":1}";
		}
		
		return resultJson;
	}
	@RequestMapping(value="/password/reset/page",method=RequestMethod.GET)
	public ModelAndView goResetPage(HttpServletRequest request) {
		Member member = new Member();
		member.setId(request.getParameter("hello"));
		member.setPass(request.getParameter("impokey"));
		member = memberService.loginCheck(member);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("member",member);
		mav.setViewName("member/member-resetpassword");
				
		return mav;
	}
	
	@RequestMapping(value="/member/member-request-resetpassword",method=RequestMethod.GET)
	public ModelAndView goResetPassword() {
		ModelAndView mav = new ModelAndView("member/member-request-resetpassword");
		return mav;
	}
	
}
