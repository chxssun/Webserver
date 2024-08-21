package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.WMemberDAO;
import com.model.WMemberVO;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("로그인 실패");
			response.sendRedirect("login.jsp");
		}
	
	}

}
