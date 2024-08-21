package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex02MakeTable")
public class Ex02MakeTable extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String room = request.getParameter("room");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");		
		out.println("<table border=\"1px solid black\">");
		out.println("<tr>");
		for(int i = 1; i <= Integer.parseInt(room); i++) {
			out.println("<td>" + i + "</td>");			
		}
		out.println("</tr>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
	}
	

}
