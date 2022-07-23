package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {

	// Model(DTO)에 대해 데이터베이스와 연결이 되도록
	// 메소드를 만드는 영역!
	
	// JDBC 연결 순서!
	// ** 프로젝트에 ojdbc6.jat 연결 ! (선작업!)
	// 1. 동적로딩
	// 2. 데이터베이스 연결
	// 3. sql문 전송
	// 4. 객체 닫기

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	// 데이터베이스 연결을 위한 메소드!
	public void getCon() {
		
		try {
			// 1. 동적로딩 -> Class.forName()
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. 데이터베이스 연결 -> url, db_id, db_pw
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id="hr";
			String db_pw="hr";
			
			conn = DriverManager.getConnection(url,db_id,db_pw);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 객체를 닫아주는 메소드 생성
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}if(psmt != null) {
				psmt.close();
			}if(conn !=null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
	
	
	int cnt = 0; // 전역변수 선언
	
	// 회원가입 기능 Dto 타입으로 dto객체를 받음
	public int join(DTO dto) {
		getCon();	
	
		try {
			//sql문 작성
			String sql = "insert into member values(?, ?, ?)";
			
			psmt=conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			
			cnt = psmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
		
	}
	
	String name = null;
	
	// 로그인 기능
	public String login(DTO dto) {
		getCon();
		
		try {
			String sql = "select NAME from member where ID =? and PW =? ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				name = rs.getString("NAME");
			}
			
			close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;
	}
	
}
