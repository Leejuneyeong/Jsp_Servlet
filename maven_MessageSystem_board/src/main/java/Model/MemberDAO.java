package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	// 회원정보를 데이터베이스에 연결하기 위한 DAO
	
	// 데이터베이스에서 사용되는 객체 선언!
	// crtl+shift+o
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	int cnt = 0; // 실행 결과를 담을 수 있는 변수
	
	public void getCon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//알아내는법 : Data Source Exploer 항목에서 데이터베이스 우클릭 - properties에서 확인
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_user = "hr";
			String db_pw = "hr";
			
			conn = DriverManager.getConnection(url, db_user, db_pw);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
	}
	
	public void close() {
		
			try {
				if(rs!=null) {
				  rs.close();
				}if(psmt!=null) {
				  psmt.close();
				}if(conn!=null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
	public int join(MemberDTO dto) {
		getCon();
		
		try {
			String sql="insert into web_member values(?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			
			// ? 값 연결하기!
			psmt.setString(1,dto.getEmail());
			psmt.setString(2,dto.getTel());
			psmt.setString(3,dto.getPw());
			psmt.setString(4,dto.getAddress());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt; // 성공 : 1 이라는 숫자를 뱉음
	}
}

































	
