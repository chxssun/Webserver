package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ex07LogoutService")
public class ex07LogoutService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// session에 있는 nick을 만료시키고
		// ex07main.jsp로 이동
		HttpSession session = request.getSession();
		
		// session.removeAttribute("nick");
		session.invalidate();
		
		response.sendRedirect("ex07main.jsp");
	
	}

}
