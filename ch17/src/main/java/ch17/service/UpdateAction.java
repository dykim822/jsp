package ch17.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch17.dao.MemberDao;
import ch17.model.Member;
public class UpdateAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		Member member = new Member();
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setTel(tel);
		member.setAddress(address);
		MemberDao md = MemberDao.getInstance();
		int result = md.update(member);
		request.setAttribute("result", result);
		return "update";
	}

}
