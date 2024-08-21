package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ex07LoginService")
public class Ex07LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("kcs") && pw.equals("1234")) {
			// 로그인 성공
			// servlet에서 Session사용하는 방법
			HttpSession session = request.getSession();
			session.setAttribute("nick", "천둥");
			response.sendRedirect("ex07main.jsp");
			
		}else {
			// 로그인 실패시
			response.sendRedirect("ex07login.jsp");
		}
		
	
	}

}
