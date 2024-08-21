package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// URL Mapping
// Java Servlet 파일을 Web에서 실행시키기 위해 URL을 맵핑(연결)한것
@WebServlet("/abc")
public class TeamServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 문제
		// 1. 팀 단위로 서로의 ip를 공유
		// TeamServlet에
		// 팀장이 접속하면 - 팀장님 반가워요!
		// 그외 팀원이 접속하면 - 우리팀 최고에요
		String ip = request.getRemoteAddr();
		System.out.println("접속한 IP : " + ip);
		
		response.setCharacterEncoding("EUC-KR");
		
		PrintWriter out = response.getWriter();
		String hi = "";
		String who = "";
		boolean isWho = false;
		if(ip.equals("192.168.20.155")) {
			hi = "나는야 팀장";
			System.out.println("팀장 등장");
		}else if(ip.equals("192.168.20.70")) {
			hi = "너는 준영이지";
			System.out.println(ip+"준영이 등장");
		}else if(ip.equals("192.168.21.172")) {
			hi = "너는 찬혁이지";
			System.out.println(ip+"찬혁이 등장");
		}else if(ip.equals("http://192.168.21.206")) {
			hi = "너는 창민이지";
			System.out.println(ip + "창민이 등장");
		}
		else {
			hi = "누구..세요..??";
			System.out.println(ip+"외부인 등장");
			who = "<img src='img/shin.jpeg'>";
			isWho = true;
		}
		
		out.println("<html>");
		out.println("<body>");		
		out.println("<h2>" +hi+ "</h2>");
		if(isWho) {
			out.print(who);
			isWho = false;
		}
		out.println("</body>");
		out.println("</html>");
	}

}
