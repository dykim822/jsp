package ch07;
import java.io.IOException;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class BoxTag extends SimpleTagSupport {
	@Override
	public void doTag() throws JspException, IOException {
		JspContext jc = getJspContext();
		JspWriter out = jc.getOut();
		JspFragment body = getJspBody();	//jsp:doBody
		out.println("<table border='1' cellpadding='20'<tr><td>");
		body.invoke(out);	//jsp:doBody
		out.println("</td></td></table>");
	}
}
