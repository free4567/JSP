<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.net.ConnectException"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	request.setCharacterEncoding("UTF-8");
	String   bookId    = request.getParameter("bookId");
	String   bookName  = request.getParameter("bookName");
	String   publisher = request.getParameter("publisher");
	String   price     = request.getParameter("price");
	

	// 데이터베이스 처리
	String host = "jdbc:mysql://127.0.0.1:3306/java1_bookstore";
	String user = "root";
	String pass = "1234";
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		String sql = "INSERT INTO `book` VALUES (?,?,?,?);";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, bookId );
		psmt.setString(2, bookName);
		psmt.setString(3, publisher);
		psmt.setString(4, price);
		
		psmt.executeUpdate();
		conn.close();
			
	}catch(Exception e){
			e.printStackTrace();
	}

	// 리다이렉트
	response.sendRedirect("./list.jsp");
%>
