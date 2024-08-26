package com.front;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.JoinController;
import com.controller.ListController;
import com.controller.LoginController;
import com.controller.LogoutController;
import com.controller.UpdateController;
import com.model.WMemberDAO;
import com.model.WMemberVO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("프론트 컨트롤러 실행");
		
		// 1. client가 요청한 전체 url 가져오기
		String requestURL = request.getRequestURI();
		System.out.println(requestURL);
		// 2. Context Path 가져오기
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		// 3. 요청 url만 가져오기
		String url = requestURL.substring(contextPath.length());
		System.out.println(url);
		
		String moveURL = null;
		
		Command command = null;
		
		if (url.equals("/join.do")) { // 회원가입 기능
			command = new JoinController();
			
		} else if (url.equals("/login.do")) {  // 로그인 기능
			command = new LoginController();
			
		} else if (url.equals("/logout.do")) {  // 로그아웃 기능
			command = new LogoutController();
			
		} else if (url.equals("/list.do")) {  // 회원정보조회 기능
			command = new ListController();
					
		} else if (url.equals("/update.do")) {  // 회원정보수정 기능
			command = new UpdateController();
			
		}
		moveURL = command.execute(request, response);
		response.sendRedirect(moveURL);
		
	}

}
