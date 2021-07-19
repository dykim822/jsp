package ch17.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch17.dao.MemberDao;
import ch17.model.Member;
public class JoinAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		Member member = new Member();
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setAddress(address);
		member.setTel(tel);
		MemberDao md = MemberDao.getInstance();
		Member mem = md.select(id);
		int result = 0;
		if(mem == null) {
			result = md.insert(member);
		} else {
			result = -1;
		}
		request.setAttribute("result", result);
		return "join";
	}

}
