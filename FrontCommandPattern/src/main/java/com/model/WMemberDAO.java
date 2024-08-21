package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class WMemberDAO {

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

	
	public int join(WMemberVO vo) {

		int cnt = 0;
		
		getConnection();
		
		String sql = "INSERT INTO WMEMBER VALUES(?, ?, ?)";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPw());
			psmt.setString(3, vo.getNick());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}

	public WMemberVO login(WMemberVO vo) {
		
		WMemberVO info = null;
		
		getConnection();
		
		String sql = "SELECT * FROM WMEMBER WHERE ID = ? AND PW = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPw());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString("ID");
				String pw = rs.getString("PW");
				String nick = rs.getString("NICK");
				
				info = new WMemberVO(id, pw, nick);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return info;
	}

	public ArrayList<WMemberVO> list() {
		
		ArrayList<WMemberVO> list = new ArrayList<WMemberVO>();
		
		getConnection();
		
		String sql = "SELECT * FROM WMEMBER";
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("ID");
				String pw = rs.getString("PW");
				String nick = rs.getString("NICK");
				WMemberVO vo = new WMemberVO(id, pw, nick);
				list.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
}
