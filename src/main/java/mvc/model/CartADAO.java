package mvc.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
<<<<<<< HEAD
import java.sql.ResultSet;
=======
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
import java.sql.SQLException;

import mvc.database.DBConnection;

public class CartADAO {
	private static CartADAO instance;
	private CartADAO() {}
	
	public static CartADAO getInstance() {
		if(instance == null) instance = new CartADAO();
		return instance;
	}
	
	public void insertGame(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
<<<<<<< HEAD
		String sql = "insert into addCart(cart_seq, productId, pname, p_description, programer, filename, quantity) select cart_seq.nextval, productId, pname, p_description, programname, filename, quantity from product where productId = ?";
=======
		String sql = "insert into addCart(productId, pname, p_description, programer, filename, quantity) select productId, pname, p_description, programname, filename, quantity from product where productId = ?";
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
		
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("카트부분이 새끈빠끈하게 실패해뿌렸쓰" +e);
		} finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
<<<<<<< HEAD
	
	public void DeleteAllList() {
		String sql = "delete from addCart";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
		
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("카트부분이 새끈빠끈하게 실패해뿌렸쓰" +e);
		} finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void DeleteProduct(String p_id) {
		String sql ="delete from addCart where cart_seq = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_id);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("카트부분이 새끈빠끈하게 실패해뿌렸쓰" +e);
		} finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public int BuyAllList() {
		String sql = "select quantity from addCart";
		
		int value = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				value += rs.getInt("quantity");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("카트부분이 새끈빠끈하게 실패해뿌렸쓰" +e);
		} finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
				if(rs != null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return value;
	}
	
	public void UpdateGame(String id) {
		String sqll = "select productId from addCart";
		 String sql = "INSERT INTO gameList (ID, productId, ischeck) VALUES(?,?, 1)";
		 String p_id = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			PreparedStatement pstmts = null;
			ResultSet rs = null;
			try {
				conn = DBConnection.getConnection();
				pstmt = conn.prepareStatement(sqll);
				pstmts = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					if(p_id == null || p_id != rs.getString("productId")) {
						p_id = rs.getString("productId");
						pstmts.setString(1,id);
						pstmts.setString(2, p_id);
						pstmts.executeUpdate();
					}
				}
	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("카트부분이 새끈빠끈하게 실패해뿌렸쓰" +e);
			} finally {
				try {
					if(pstmt != null)pstmt.close();
					if(pstmts != null)pstmts.close();
					if(rs != null) rs.close();
					if(conn != null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
	}
=======
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
}
