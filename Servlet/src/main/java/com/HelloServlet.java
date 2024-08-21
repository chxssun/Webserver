package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// System.out.println("Hello Servlet!!");
		// request(요청) 객체
		String ip = request.getRemoteAddr();
		System.out.println("접속한 IP : " + ip);
		
		// 응답객체에 한글 인코딩 하는 방법
		response.setCharacterEncoding("EUC-KR");
		
		// 응답하는 HTML문서에 글자나 태그를 작성하는 객체
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");		
		out.println("<h2>" + ip + "님 방문을 감사드립니다! </h2>");
		out.println("<img src='img/shin.jpeg'>");
		out.println("</body>");
		out.println("</html>");
	}

}
