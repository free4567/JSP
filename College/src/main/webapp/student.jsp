<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.jboard2.db.DBCP"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jboard1.bean.StudentBean"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<StudentBean> students = new ArrayList<>(); 

	try{
		Connection conn = DBCP.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from `student`");
	
		while(rs.next()){
			StudentBean cb = new StudentBean();
			cb.setStdNO(rs.getString(1));
			cb.setStdName(rs.getString(2));
			cb.setStdHp(rs.getString(3));
			cb.setStdYear(rs.getString(4));
			cb.setStdAddres(rs.getString(5));
			
			students.add(cb);
		}
	
		rs.close();
		stmt.close();
		conn.close();
	
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학생관리</title>
	</head>
	<body>
		<h3>학생관리</h3>
		<a href="../lecture.jsp">강좌관리</a>
		<a href="./register.jsp">수강관리</a>
		<a href="./student.jsp">학생관리</a>
		<h3>학생관리</h3>
		<button>등록</button>	
		<table border="1">
			<tr>
	            <th>학번</th>
	            <th>이름</th>
	            <th>휴대폰</th>
	            <th>학년</th>
	            <th>주소</th>
	        </tr>
	        <% for(StudentBean lb : students){ %>
	        <tr>
	        	<td><%= lb.getStdNO() %></td>
	           	<td><%= lb.getStdName() %></td>
	            <td><%= lb.getStdHp() %></td>
	            <td><%= lb.getStdYear() %></td>
	            <td><%= lb.getStdAddres() %></td>
		     </tr>	
		     <% } %>			
		</table>
	</body>
</html>