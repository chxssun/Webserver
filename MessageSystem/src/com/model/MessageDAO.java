package com.model;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MessageDAO {
	private ResultSet rs;
	private PreparedStatement psmt;
	private Connection conn;
	
	// db연결
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
	// db연결해제
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
	// 메세지 보내기
	public int messageInsert(MessageDTO dto) {
		int cnt = 0;
		
		try {
			getConnection();
			
			String sql = "INSERT INTO MESSAGE VALUES(MSGNUM.NEXTVAL, ?,?,?, SYSDATE)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getEmail());
			psmt.setString(3, dto.getContents());
			
			cnt = psmt.executeUpdate();
			
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.println("db연결 실패");
		}finally {
			close();
		}
		
		return cnt;
	}
	// 메세지 불러오기
	public ArrayList<MessageDTO> messageSelect(String loginEmail) {
		ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
		
		getConnection();
		
		try {
			String sql = "SELECT * FROM MESSAGE WHERE EMAIL = ? ORDER BY INDATE DESC";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, loginEmail);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("NUM");
				String name = rs.getString("NAME");
				String email = rs.getString("EMAIL");
				String contents = rs.getString("CONTENTS");
				String indate = rs.getString("INDATE");
				
				MessageDTO dto = new MessageDTO(num, name, email, contents, indate);
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
			
		return list;
		
	}
	// 메세지 전체삭제
	public int messageDeleteAll(String email) {
		int cnt = 0;  // 리턴할 리턴 생성
		getConnection();  // db연결
		try {
			String sql = "DELETE FROM MESSAGE WHERE EMAIL = ?";  // sql 준비
			psmt = conn.prepareStatement(sql);  // sql담고 보내기
			
			psmt.setString(1, email);  // sql ? 셋팅
			
			cnt = psmt.executeUpdate();  // 테이블의 변화 cnt에 담기
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("sql문장 오류");
		}finally {
			close();  // db연결 해체
		}
		return cnt;  // 리턴
	}
	// 메세지 선택 삭제
	public int messageDelete(int cnum) {
		int cnt = 0;
		getConnection();  // db연결
		try {
			String sql = "DELETE FROM MESSAGE WHERE NUM = ?";  // sql 준비
			psmt = conn.prepareStatement(sql);  // sql담고 보내기
			
			psmt.setInt(1, cnum);  // sql ? 셋팅
			
			cnt = psmt.executeUpdate();  // 테이블의 변화 cnt에 담기
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("sql문장 오류");
		}finally {
			close();  // db연결 해체
		}
		return cnt;
	}
	

}
