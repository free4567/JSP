package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class hello extends HttpServlet {
		private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
			// 해당 서블이 최초 실행될 때 한번 호출
			System.out.println("Hello init...");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// 요청방식이 GET일 경우 호출되는 메서드
			System.out.println("Hello doGet...");
			
			resp.setContentType("text/html;charset=UTF-8");
			
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<head>");
			writer.print("<meta charset='UTF-8'/>");
			writer.print("<title>Hello</title>");
			writer.print("</head>");
			writer.print("<body>");
			writer.print("<h3>Hello 서블릿<h3>");
			writer.print("<p>");
			writer.print("<a href='/ch08/1_서블릿.jsp'>1_서블릿</a><br/>");
			writer.print("<a href='/ch08/hello.do'>Hello 서블릿</a><br/>");
			writer.print("<a href='/ch08/welcome.do'>welcome 서블릿</a><br/>");
			writer.print("<a href='/ch08/welcome.do'>welcome 서블릿</a><br/>");
			writer.print("<a href='/ch08/greeting.do'>Greeting 서블릿</a><br/>");
			writer.print("</p>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	public void destroy() {
		// 서블릿이 종료될때 호출되는 메서드
		System.out.println("Hello destory...");
	}
}
