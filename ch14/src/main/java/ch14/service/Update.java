package ch14.service;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ch14.dao.Board;
import ch14.dao.BoardDao;
public class Update implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		Board board = new Board();
		// updateForm.jsp가서 받아오는 데이터 확인 & set
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		String subject = request.getParameter("subject");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String password = request.getParameter("password");
		
		board.setNum(num);
		board.setSubject(subject);
		board.setWriter(writer);
		board.setContent(content);
		board.setPassword(password);
		
		BoardDao bd = BoardDao.getInstance();
		int result = bd.update(board);
		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("result", result);
		return "update.jsp";
	}

}
