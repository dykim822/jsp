package ch13.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Home implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int num = (int)(Math.random()*4);
		String[] img = {"ioi", "jung", "produce", "twice"};
		request.setAttribute("img",img[num]);
//		request.setAttribute("img","images"+img[num]+".jpg");
		return "home.jsp";
	}

}
