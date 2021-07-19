package Kbay.service;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Kbay.dao.KboardDao;
import Kbay.model.Kboard;


public class B_InsertAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 한글 깨짐 방지용
		try{ request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		KboardDao bd = KboardDao.getInstance();
		int number = bd.maxNum();
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		Kboard kboard = new Kboard();
		if (b_num != 0) {
			kboard.setB_ref(Integer.parseInt(request.getParameter("b_ref")));
		} else kboard.setB_ref(number);		
		kboard.setB_num(number);
		kboard.setB_subject(request.getParameter("b_subject"));
		kboard.setId(request.getParameter("id"));
		kboard.setB_content(request.getParameter("b_content"));
//		kboard.setB_pass(request.getParameter("b_pass"));
		kboard.setB_re_level(Integer.parseInt(request.getParameter("b_re_level")));
		
		kboard.setB_re_step(Integer.parseInt(request.getParameter("b_re_step")));
		
		String pageNum = request.getParameter("pageNum");
		
		int result  = bd.insert(kboard);
		
		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		return "board/B_insertResult";
	}
}