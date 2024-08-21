package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MessageDAO;
import com.model.MessageDTO;

@WebServlet("/MessageInsertService")
public class MessageInsertService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contents = request.getParameter("contents");
		
		MessageDTO dto = new MessageDTO(name, email, contents);
		
		MessageDAO dao = new MessageDAO();
		
		int cnt = dao.messageInsert(dto);
		
		if(cnt > 0) {
			System.out.println("메세지 전달 성공");
		}else {
			System.out.println("메세지 전달 실패");
		}
		response.sendRedirect("main.jsp");
	
	
	
	
	
	
	}

}
