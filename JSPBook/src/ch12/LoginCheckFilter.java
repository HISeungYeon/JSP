package ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoginCheckFilter implements Filter{

	private FilterConfig filterConfig = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("로그인 필터  초기화..");
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		// 사용자가 입력한 정보 request객체에 들어있음
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);

		// web.xml에서 InitParameter로 넘어온 값.
		String paramId = filterConfig.getInitParameter("id"); // admin
		String paramPw = filterConfig.getInitParameter("pw"); // admin1234
		System.out.println("paramId : " + paramId);
		System.out.println("paramPw : " + paramPw);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String msg;
		
		PrintWriter witer = response.getWriter();
		
		System.out.println(id.equals(paramId)&& pw.equals(paramPw));
		
		if(id.equals(paramId)&& pw.equals(paramPw)) {
			msg = "로그인 성공 ㅇㅁㅇ";
		}else {
			msg = "로그인 실패";
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ch12/loginForm.jsp");
			dispatcher.forward(request, response);
			
		}
		
		witer.println(msg);
		chain.doFilter(request, response);

	}

	@Override
	public void destroy() {
		System.out.println("로그인 필터  끝!");
	}
	
}
