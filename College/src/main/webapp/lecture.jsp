<%@page import="kr.co.jboard2.db.DBCP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.jboard1.bean.LectureBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<LectureBean> lectures = new ArrayList<>(); 

	try{
		Connection conn = DBCP.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from `lecture`");
		
		while(rs.next()){
			LectureBean cb = new LectureBean();
			cb.setLecNO(rs.getString(1));
			cb.setLecName(rs.getString(2));
			cb.setLecCredit(rs.getString(3));
			cb.setLecTime(rs.getString(4));
			cb.setLecClass(rs.getString(5));
			
			lectures.add(cb);
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
		<title>강좌관리</title>
	</head>
	<body>
		<h3>강좌관리</h3>
		<a href="../lecture.jsp">강좌관리</a>
		<a href="./register.jsp">수강관리</a>
		<a href="./student.jsp">학생관리</a>
		<h3>강좌현황</h3>
		<button>등록</button>	
		<table border="1">
			<tr>
	            <th>번호</th>
	            <th>강좌명</th>
	            <th>학점</th>
	            <th>시간</th>
	            <th>강의장</th>
	        </tr>
	        <% for(LectureBean lb : lectures){ %>
	        <tr>
	        	<td><%= lb.getLecNO() %></td>
	           	<td><%= lb.getLecName() %></td>
	            <td><%= lb.getLecCredit() %></td>
	            <td><%= lb.getLecTime() %></td>
	            <td><%= lb.getLecClass() %></td>
		     </tr>	
		     <% } %>			
		</table>
	</body>
</html>
	