package ch15;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
@WebFilter("/FirstFilter")
public class FirstFilter implements Filter {
	// WAS종료될 때 실행
    public FirstFilter() {
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		
	}
	// 실제 요청된 작업 처리
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("필터가 시작되었습니다");
		chain.doFilter(request, response);
		System.out.println("필터가 종료되었습니다");
	}

	// doFilter를 실행하기 전에 필요한 작업 실행
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
