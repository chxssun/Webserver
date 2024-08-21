package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_id = "hr";
			String db_pw = "12345";
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("동적로딩 실패");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("연결 실패");
		}
	}
	
	private void close() {
		try {
			// rs는 사용된적이 없으면 반남하지 않도록
			// insert, update, delete메서드에서 실행시켜도 반납X
			if(rs != null)
				rs.close();
			if(psmt != null)
				psmt.close();
			if(conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public int join(MemberDTO dto) {
		// 회원가입 기능
		int cnt = 0;
		
		getConnection();
		
		try {
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getAddr());

			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("연결실패");
		}finally {
			close();
		}
		return cnt;
	}

	public MemberDTO login(MemberDTO dto) {
		
		MemberDTO info = null;
		
		getConnection();
		
		try {
			String sql = "SELECT * FROM MEMBER WHERE EMAIL = ? AND PW = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());

			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String email = rs.getString("EMAIL");
				String pw = rs.getString("PW");
				String phone = rs.getString("PHONE");
				String addr = rs.getString("ADDR");
				
				info = new MemberDTO(email, pw, phone, addr);
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.println("연결실패");
		}finally {
			close();
		}
		
		return info;
	}
	
	public int update(MemberDTO dto) {
		int cnt = 0;
		getConnection();
		try {
			String sql = "UPDATE MEMBER SET PW=?, PHONE=?, ADDR=? WHERE EMAIL=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPw());
			psmt.setString(2, dto.getPhone());
			psmt.setString(3, dto.getAddr());
			psmt.setString(4, dto.getEmail());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}

}
