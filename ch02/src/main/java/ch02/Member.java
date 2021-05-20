package ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Member
 */
@WebServlet("/Member")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
//		String confirmPass = request.getParameter("confirmPass");
		String gender = request.getParameter("gender");
		String[] email = request.getParameterValues("email");
		String job = request.getParameter("job");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h2>회원가입 정보</h2>");
		out.println("이름 : " +name+ "<p>");
		out.println("ID : " +id+ "<p>");
		out.println("비밀번호 : " +password+ "<p>");
		out.println("성별 : " +gender+ "<p>");
		out.println("E-mail 수신 : ");
		if(email == null) {
			out.println("수신 거부를 선택하였습니다<p>");
		} else {
			for(int i = 0; i < email.length; i++) {
				if(i == email.length - 1) {
					out.println(email[i] + "<p>");
				} else {
					out.println(email[i] + ", ");
				}
			}
		}
		out.println("직업 : " +job+ "<p>");	
		out.println("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
