package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import domain.CartVO;

public class CartDAO {
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
	
	public boolean create(String user_id, String product_id) {
		   connect();
		   String sql = "insert into cart(user_id, product_id) values(?,?)";
		   try {
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setString(1, user_id);
			   pstmt.setString(2, product_id);
			   pstmt.executeUpdate();
		   } catch(SQLException e) {
			   e.printStackTrace();
			   return false;
		   } finally {
			   disconnect();
		   }
		   return true;
	}
	
	public ArrayList<CartVO> readList(String user_id){
		connect();
		ArrayList<CartVO> cart_list = new ArrayList<CartVO>();
		String sql = "select * from cart where user_id = ? AND is_sell=0";
		try {
			pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, user_id);
		   ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				CartVO vo = new CartVO();
				vo.setId(rs.getString("id"));
				vo.setUser_id(rs.getString("user_id"));
				vo.setProduct_id(rs.getString("product_id"));
				vo.setIs_sell(rs.getString("is_sell"));;
				cart_list.add(vo);
			}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return cart_list;   
	}
	
    public boolean delete(String product_id) {
	    connect();
	    String sql = "delete from cart where product_id=? and is_sell=0";
	    try {
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, product_id);
		    pstmt.executeUpdate();
	    } catch(SQLException e) {
		    e.printStackTrace();
		    return false;
	    } finally {
		    disconnect();
	    }
	    return true;
    }
    
    public boolean buy(String user_id) {
	    connect();
	    String sql = "update cart set is_sell=1 where user_id=?";
	    try {
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, user_id);
		    pstmt.executeUpdate();
	    } catch(SQLException e) {
		    e.printStackTrace();
		    return false;
	    } finally {
		    disconnect();
	    }
	    return true;
    }
    
	public ArrayList<CartVO> readSoldList(String user_id){
		connect();
		ArrayList<CartVO> cart_list = new ArrayList<CartVO>();
		String sql = "select * from cart where user_id = ? AND is_sell=1";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				CartVO vo = new CartVO();
				vo.setId(rs.getString("id"));
				vo.setUser_id(rs.getString("user_id"));
				vo.setProduct_id(rs.getString("product_id"));
				vo.setIs_sell(rs.getString("is_sell"));;
				cart_list.add(vo);
			}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return cart_list;   
	}
}
