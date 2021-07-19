package ch16;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.XMLOutputter;
@WebServlet("/EmpXml")
public class EmpXml extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EmpXml() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 이름 중복 방지용
		int deptno1 = Integer.parseInt(request.getParameter("deptno"));
		EmpDao ed = EmpDao.getInstance();
		List<Emp> list = ed.list(deptno1);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// xml상에서 <empData></empData> 를 생성한다는 의미
		Element root = new Element("empData");
		for(Emp e:list) {
			// <emp></emp> 의미
			Element emp = new Element("emp");
			
			Element empno = new Element("empno");
			// <emp>7396</emp> 문자로 empno Element에 값을 채워라(7396)
			empno.setText(e.getEmpno()+"");
			emp.addContent(empno);
			
			Element ename = new Element("ename");
			ename.setText(e.getEname()+"");
			emp.addContent(ename);
			
			Element job = new Element("job");
			job.setText(e.getJob()+"");
			emp.addContent(job);
			
			Element mgr = new Element("mgr");
			mgr.setText(e.getMgr()+"");
			emp.addContent(mgr);
			
			Element hiredate = new Element("hiredate");
			hiredate.setText(e.getHiredate()+"");
			emp.addContent(hiredate);
			
			Element sal = new Element("sal");
			sal.setText(e.getSal()+"");
			emp.addContent(sal);
			
			Element comm = new Element("comm");
			comm.setText(e.getComm()+"");
			emp.addContent(comm);
			
			Element deptno = new Element("deptno");
			deptno.setText(e.getDeptno()+"");
			emp.addContent(deptno);
			
			root.addContent(emp);
		}
		Document doc = new Document(root);
		XMLOutputter xml = new XMLOutputter();
		xml.output(doc, out);
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
