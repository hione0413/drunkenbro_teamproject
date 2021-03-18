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
	//XML������ �������� ���̵�� ��ġ ��ų��. (��������� �ƴ�)
	String setFrom="Admins@drunkenbros.com";
	
	//���� �޴»���� Mail,Name
	String toMail;
	String name;
	//���� ����� ����
	String title;
	String content;
	
	public void initForResetPW(HttpServletRequest request,String url,JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
		toMail = request.getParameter("email");
		name = request.getParameter("name");
		title = "ȸ���Բ� ��й�ȣ �缳�� ��ũ�� �����帳�ϴ�.";
		content = String.join(System.getProperty("line.separator"),
				"<h1>ȸ������ ��й�ȣ �缳�� ��ũ�Դϴ�.</h1>",
				"<br>",
				"<p><a href='"+url+"'>��ũ �ٷΰ���</a><br>",
				"</p>",
				"<br>",
				"<p><a href='http://skawls147.cafe24.com'>Go To DrunkenBROS Website</a><br>",
				"<h1> Develop By DrunkenBROS</h1>"
			);
	}
	public void initForReport(HttpServletRequest request,JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
		//toMail = "�巷ū ��ν� �Ű����� ���� �ּ�@����.com";
		toMail = "ppossing38@gmail.com";
		name = request.getParameter("id");
		title = name+"�Բ��� �Ű� ���� �ϼ̽��ϴ�.";
		content = String.join(System.getProperty("line.separator"),
				"<h1>"+name+"���� �Ű� ���� ����</h1>",
				"<br>",
				"<p>�Խñ� �̸� : "+request.getParameter("alcoholName")+"<br>",
				"</p>",
				"<p>���� ���� : "+request.getParameter("reviewTitle")+"<br>",
				"</p>",
				"<br>",
				"<p>�Ű� ���� : "+request.getParameter("content")+"<br>",
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
