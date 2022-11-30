package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.UserVO;


public class UserDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	String jdbc_driver = "com.mysql.cj.jdbc.Driver"; 
	String jdbc_url =
	"jdbc:mysql://localhost/jspdb?allowPublicKeyRetrieval =true&useUnicode=true&characterEncoding=utf8&use SSL=false&serverTimezone=UTC";
	    
   void connect() { try {
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(jdbc_url, "jspbook","passwd"); } catch(Exception e) {
		e.printStackTrace();
		}
	}
	 
	void disconnect() { 
		if(pstmt != null) {
			try { 
				pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace(); 
			}
		}
		if(conn != null) { 
			try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace(); }
			} 
	}
	
   public boolean add(UserVO vo) {
	   connect();
	   String sql = "insert into user values(?,?,?)";
	   try {
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, vo.getId());
		   pstmt.setString(2, vo.getUsername());
		   pstmt.setString(3, vo.getPw());
		   pstmt.executeUpdate();
	   } catch(SQLException e) {
		   e.printStackTrace();
		   return false;
	   } finally {
		   disconnect();
	   }
	   return true;
   }   
	
	public UserVO login(String id, String pw) {
		UserVO vo = new UserVO();
		connect();
		String sql = "select * from user where id=? and pw=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setUsername(rs.getString("username"));
				vo.setPw(rs.getString("pw"));
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			System.out.println("errrrr");
			e.printStackTrace();
		}
		return vo;
	}	
}
