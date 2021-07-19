package Kbay.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Kbay.dao.KboardDao;
import Kbay.model.Kboard;


public class B_InsertForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int b_num = 0, b_ref = 0, b_re_level = 0, b_re_step = 0;
		String pageNum = request.getParameter("pageNum");
		b_num = Integer.parseInt(request.getParameter("b_num"));
		if (b_num != 0) {
			KboardDao bd = KboardDao.getInstance();
			Kboard board = bd.select(b_num);
			b_ref = board.getB_ref();
			b_re_step = 1;
			b_re_level  = 1;
		} 
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("b_num", b_num);
		request.setAttribute("b_ref", b_ref);
		request.setAttribute("b_re_level", b_re_level);
		request.setAttribute("b_re_step", b_re_step);
		request.setAttribute("id", id);
		
//		System.out.println(" InsertForm pageNum : " + pageNum);

		return "board/B_insertForm";
	}
}