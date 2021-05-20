package ch04;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class Greet
 */
@WebServlet("/Greet")
public class Greet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
	private PrintWriter pw;
    @Override	// load될 때 실행
    public void init() throws ServletException {
    	try {
			pw = new PrintWriter(new FileWriter("c:/문서/SW국비교육/JSP/log.txt"));
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
    }
    @Override	// 서버가 종료할 때 실행> tomcat을 종료해야 메모장에 작성된다!
    public void destroy() {
    	if(pw != null) {
    		pw.close();
    	}
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String greet = "안녕하세요 " + name + "님";
		GregorianCalendar gc = new GregorianCalendar();
		pw.printf("%TF %TT - %s\n", gc, gc, name);
		out.println("<html><body>");
		out.println(greet);
		out.println("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
