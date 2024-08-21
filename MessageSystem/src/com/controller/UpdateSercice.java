package com.controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.taglibs.standard.tag.common.fmt.RequestEncodingSupport;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/UpdateSercice")
public class UpdateSercice extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
				
		request.setCharacterEncoding("EUC-KR");
		String email = info.getEmail();
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		
		MemberDTO dto = new MemberDTO(email, pw, phone, addr);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(dto);
		
		if(cnt > 0) {
			System.out.println("회원정보 수정 성공");
			session.setAttribute("info", dto);
		}else {
			System.out.println("회원정보수정 실패");
		}
		response.sendRedirect("main.jsp");
	}

}
