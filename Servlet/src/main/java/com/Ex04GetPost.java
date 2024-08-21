package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex04GetPost")
public class Ex04GetPost extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// post 방식의 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		// get방식이나 post방식이나 넘어가는 데이터를
		// 가져오는 코드는 변한이 없다
		String text = request.getParameter("text");
		System.out.println(text);
	
	}

}
