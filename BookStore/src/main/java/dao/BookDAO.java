package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.DBCP;

public class BookDAO {

	private static BookDAO instance = new BookDAO();
	public static BookDAO getInstance() {
		return instance;
	}
	private BookDAO() {}

	
	public void insertBook() {
		try {
				Connection conn = DBCP.getConnection();
				PreparedStatement psmt = conn.prepareStatement("insert `book` values (?,?,?,?)");
				psmt.setString(1, vo.bookId());
				psmt.setString(2, vo.bookName());
				psmt.setString(3, vo.publisher());
				psmt.setString(4, vo.price());
				psmt.executeUpdate();
				close();
		}catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public void selectBook() {}
	public void selectBooks() {}
	public void updateBook() {}
	public void deleteBook() {}
	
}
