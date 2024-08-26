package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;

public class LogoutController implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		// session.removeAttribute("info");
		
		session.invalidate();
		
		return "main.jsp";
		
	}
		
}
