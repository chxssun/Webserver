package com.controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.WMemberDAO;
import com.model.WMemberVO;

public class JoinController implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");  // 문자 인코딩 !!
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		
		// System.out.println(id + "/" + pw + "/" + nick);
		
		if (id.isEmpty() || pw.isEmpty() || nick.isEmpty()) {
			return "join.jsp";
		}else {
			WMemberVO vo = new WMemberVO(id, pw, nick);
			
			WMemberDAO dao = new WMemberDAO();
			
			int cnt = dao.join(vo);
			
			if(cnt > 0) {
				System.out.println("회원가입 성공");
			}else {
				System.out.println("회원가입 실패");
			}
			return "main.jsp";
		}
	}
}
