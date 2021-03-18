package com.drunkenbros.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.drunkenbros.common.SendEmail;
import com.drunkenbros.model.domain.Member;
import com.drunkenbros.model.service.MemberService;

@Controller
public class MailController {
	@Autowired
	private JavaMailSender javaMailSender;
	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/password/request", method = RequestMethod.GET)
	@ResponseBody
	public String sendMail(HttpServletRequest request) {
		String resultJson = "";

		Member member = new Member();
		member.setName(request.getParameter("name"));
		member.setEmail(request.getParameter("email"));
		member = memberService.memberCheckWithNameandEmail(member);

		if (member != null) {
			System.out.println("▶ 현재 비밀번호 찾기 원하는 멤버의 ID : " + member.getId());
			System.out.println("▶ 현재 비밀번호 찾기 원하는 멤버의 Email : " + member.getEmail());
			System.out.println("▶ 현재 비밀번호 찾기 원하는 멤버의 Name : " + member.getName());
			System.out.println("▶ ======곧 메일을 보냅니다.====== ◀");

			StringBuilder sb = new StringBuilder();
			sb.append("{");
			sb.append("\"resultCode\":1");
			// sb.append("\"url\":\"localhost:7070/password/reset/page?member_id="+member.getMember_id()+"\",");
			// sb.append("\"id\":\""+member.getId()+"\",");
			// sb.append("\"name\":\""+member.getName()+"\",");
			// sb.append("\"member_id\":\""+member.getMember_id()+"\"");
			sb.append("}");
			String url = "skawls147.cafe24.com/password/reset/page?hello=" + member.getId() + "&impokey=" + member.getPass();

			SendEmail mailSender = new SendEmail();
			mailSender.initForResetPW(request, url, javaMailSender);
			mailSender.send();

			resultJson = sb.toString();
		} else {
			resultJson = "{\"resultCode\":0}";
		}

		return resultJson;
	}

	// 신고 메일로 보내기
	@RequestMapping(value = "/report/send", method = RequestMethod.POST)
	@ResponseBody
	public String sendReport(HttpServletRequest request) {
		String resultJson = "";
		SendEmail mailSender = new SendEmail();
		mailSender.initForReport(request, javaMailSender);
		boolean result = mailSender.send();
		if(result) {
			resultJson="{\"resultCode\":1}";
		}else {
			resultJson="{\"resultCode\":0}";
		}

		return resultJson;
	}

}
