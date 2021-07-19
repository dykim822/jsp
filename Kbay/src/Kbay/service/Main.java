package Kbay.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Main implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		//HttpSession session = request.getSession();
		
		/*String m_id = (String) session.getAttribute("m_id");
		if (m_id == null || m_id.equals(""))
			m_id = " ";
		else {*/
		//	session.invalidate();
		//}
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		//if (id == null || id.equals(""))
		//	id = " ";
		
		request.setAttribute("id", id);
	
//		System.out.println("sessing id = " + id);
		
		/*HttpSession session = request.getSession();
		String m_id = (String) session.getAttribute("m_id");
		if (m_id == null || m_id.equals(""))
			m_id = " ";
		else {
			session.invalidate();
		}
		*/
		/*id에 따라 다른 프로그램으로 분기하고자 할 때는 jsp에서 script로 처리해야 한다*/
		/*if (id.equals(" "))
			return "main/main";
		else
			return "kmember/main_member";*/
		
		return "main/main_check";
	}

}
