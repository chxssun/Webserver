package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDTO;
import com.model.MessageDAO;
import com.model.MessageDTO;

@WebServlet("/MessageDeleteAllService")
public class MessageDeleteAllService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();  // 세션 가져오기
		MemberDTO info = (MemberDTO)session.getAttribute("info");  // 인포라는 이름으로 넣은 세션을 다운캐스팅후 객체생성
		MessageDAO dao = new MessageDAO();  // model불러오기
		int cnt = dao.messageDeleteAll(info.getEmail()); // 인포에 있는 이메일을 매개변수로 전달 메소드 실행후 cnt 담아주기
		
		// cnt로 성공 여부 확인
		if(cnt > 0) {
			System.out.println("메세지 전체 삭제 성공");
		}else {
			System.out.println("메세지 전체 삭제 실패");
		}
	
		response.sendRedirect("main.jsp"); // 메인으로 리다이렉트하기
	
	}

}
