package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.model.WMemberDAO;
import com.model.WMemberVO;

public class ListController implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		WMemberDAO dao = new WMemberDAO();
		ArrayList<WMemberVO> list = dao.list();
		
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		return "list.jsp";
	}
		
}
