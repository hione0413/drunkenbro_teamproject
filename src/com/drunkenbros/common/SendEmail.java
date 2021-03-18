package com.drunkenbros.common;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

public class SendEmail {
	private JavaMailSender javaMailSender;
	//XML에서의 보내는이 아이디와 일치 시킬것. (강요사항은 아님)
	String setFrom="Admins@drunkenbros.com";
	
	//메일 받는사람의 Mail,Name
	String toMail;
	String name;
	//메일 제목과 내용
	String title;
	String content;
	
	public void initForResetPW(HttpServletRequest request,String url,JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
		toMail = request.getParameter("email");
		name = request.getParameter("name");
		title = "회원님께 비밀번호 재설정 링크를 보내드립니다.";
		content = String.join(System.getProperty("line.separator"),
				"<h1>회원님의 비밀번호 재설정 링크입니다.</h1>",
				"<br>",
				"<p><a href='"+url+"'>링크 바로가기</a><br>",
				"</p>",
				"<br>",
				"<p><a href='http://skawls147.cafe24.com'>Go To DrunkenBROS Website</a><br>",
				"<h1> Develop By DrunkenBROS</h1>"
			);
	}
	public void initForReport(HttpServletRequest request,JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
		//toMail = "드렁큰 브로스 신고접수 메일 주소@메일.com";
		toMail = "ppossing38@gmail.com";
		name = request.getParameter("id");
		title = name+"님께서 신고를 접수 하셨습니다.";
		content = String.join(System.getProperty("line.separator"),
				"<h1>"+name+"님의 신고 접수 사항</h1>",
				"<br>",
				"<p>게시글 이름 : "+request.getParameter("alcoholName")+"<br>",
				"</p>",
				"<p>리뷰 제목 : "+request.getParameter("reviewTitle")+"<br>",
				"</p>",
				"<br>",
				"<p>신고 내용 : "+request.getParameter("content")+"<br>",
				"</p>",
				"<br>",
				"<p><a href='http://skawls147.cafe24.com'>Go To DrunkenBROS Website</a><br>",
				"<h1> Develop By DrunkenBROS</h1>"
		);
	}
	
	public boolean send() {
		boolean result = false;
		try {
			MimeMessage message = javaMailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, "UTF-8");
			messageHelper.setFrom(setFrom);
			messageHelper.setTo(toMail);
			messageHelper.setSubject(title);
			messageHelper.setText(content, true);
			
			javaMailSender.send(message);
			
			result = true;
			
		} catch (MailException e) {
			e.printStackTrace();
			result = false;
		} catch (MessagingException e) {
			e.printStackTrace();
			result = false;
		}
		
		return result;
	}
	
}
