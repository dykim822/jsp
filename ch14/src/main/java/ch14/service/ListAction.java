package ch14.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.dao.Board;
import ch14.dao.BoardDao;

public class ListAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String pageNum = request.getParameter("pageNum");
		final int ROW_PER_PAGE = 10;	// 한 페이지에 10개씩
		final int PAGE_PER_BLOCK = 10;	// 한 블럭에 10페이지
		if(pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		BoardDao bd = BoardDao.getInstance();
		int total = bd.getTotal();
		// 시작번호	(페이지번호 - 1) * 페이지당 개수 + 1
		int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
		// 끝번호		시작번호 + 페이지당개수 - 1
		int endRow = startRow + ROW_PER_PAGE - 1;
		List<Board> list = bd.list(startRow, endRow);
		// 번호를 보기 좋게 정렬
		int number = total - startRow + 1;
		int totalPage = (int)Math.ceil((double)total/ROW_PER_PAGE); 	// 총 페이지 수
		// 시작페이지	현재페이지 - (현재페이지-1) % 10
		int startPage = currentPage - (currentPage - 1) % PAGE_PER_BLOCK;
		int endPage = startPage + PAGE_PER_BLOCK - 1;
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		// JSP에서 jstl로 사용하는 변수와 값을 전달
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		request.setAttribute("number", number);
		request.setAttribute("list", list);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalPage", totalPage);
		return "list.jsp";
	}

}
