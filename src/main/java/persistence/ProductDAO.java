package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.ProductVO;

public class ProductDAO {
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
	public ProductVO read(String id) {
		
		ProductVO vo = new ProductVO();
		connect();
	   String sql = "select * from product where id=?";
	   try {
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   ResultSet rs = pstmt.executeQuery();
		   while (rs.next()) {
			   vo.setId(rs.getString("id"));
			   vo.setProductname(rs.getString("productname"));
			   vo.setDetail(rs.getString("detail"));
			   vo.setPrice(rs.getString("price"));
			   vo.setIs_sale(rs.getString("is_sale"));
		   }
		   rs.close();
	   } catch(SQLException e) {
		   e.printStackTrace();
	   } finally {
		   disconnect();
	   }
	   return vo;   
}

}
