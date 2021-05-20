package ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class Cal
 */
@WebServlet("/Cal")
public class Cal extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cal() {
        super();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int sum=0, substraction=0, multiple=0;
		float divistion = 0.f;
		sum = num1+num2;
		if(num1 >= num2) {
			substraction = num1 - num2;
		} else {
			substraction = num2 - num1;
		}
		multiple = num1 * num2;
		divistion = num1 / num2;
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h2>덧셈 : " + num1 + " + " + num2 + " = " + sum +"<br>");
		out.println("뺄셈 : " + num1 + " - " + num2 + " = " + substraction +"<br>");
		out.println("곱셈 : " + num1 + " * " + num2 + " = " + multiple +"<br>");
		out.println("나눗셈 : " + num1 + " / " + num2 + " = " + divistion +"</h2><br>");
		out.println("</body></html>");
		out.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
