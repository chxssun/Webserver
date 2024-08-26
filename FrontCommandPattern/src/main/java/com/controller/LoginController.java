package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.model.WMemberDAO;
import com.model.WMemberVO;

public class LoginController implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// System.out.println(id + "/" + pw);
		
		WMemberVO vo = new WMemberVO(id, pw);
		
		WMemberDAO dao = new WMemberDAO();
		
		WMemberVO info = dao.login(vo);
		
		if(info != null) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			return "main.jsp";
		}else {
			System.out.println("로그인 실패");
			return "main.jsp";
		}
		
	}
	
}
