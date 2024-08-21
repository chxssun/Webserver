package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex01InputServlet")
public class Ex01InputServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Client가 전송한 데이터 text가져오기
		// text=hellow World(parameter 방식)
		String text = request.getParameter("text");
		System.out.println(text);
		
	}

}
