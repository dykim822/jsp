package Kbay.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Kbay.dao.KboardDao;
import Kbay.model.Kboard;

public class B_ViewAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		
		String pageNum = request.getParameter("pageNum");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		KboardDao bd = KboardDao.getInstance();
		bd.readcountUpdate(b_num);
//		System.out.println("num = "+num);
		Kboard kboard = bd.select(b_num);
		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("kboard", kboard);
		request.setAttribute("id", id);
//		System.out.println("kboard="+kboard);
		
		return "board/B_view"; 
	}
}
