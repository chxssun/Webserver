package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.util.Arrays;

@WebServlet("/Ex03Join")
public class Ex03Join extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원가입 데이터 콘솔창에 출력
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		
		// 동일한 name으로 여러개의 값을 가져오는 방법
		String[] hobby = request.getParameterValues("hobby");
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(gender);		
		for(int i = 0; i < hobby.length; i++) {
			System.out.print(hobby[i]+" ");
		}System.out.println();
		System.out.println(Arrays.toString(hobby));
	}

}
