package ch18.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.SimpleEmail;
public class MailAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String to = request.getParameter("to");
		String subject = request.getParameter("subject");
		String msg = request.getParameter("msg");
		SimpleEmail se = new SimpleEmail();
		se.setHostName("smtp.naver.com");
		se.setSmtpPort(465);
		// 본인 네이버 아이디, 비밀번호
		se.setAuthenticator(new DefaultAuthenticator("danny822", "rladanny102213@"));
		try {
			se.setSSLOnConnect(true);
			se.addTo(to);
			se.setFrom("danny822@naver.com");
			se.setSubject(subject);
			se.setMsg(msg);
			se.send();	// 메일 보내기
			request.setAttribute("msg", "메일 보내기 성공");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			request.setAttribute("msg", "메일 보내기 실패");
		}
		return "mailto";
	}
}
