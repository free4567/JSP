<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
try{
	Connection conn = DBCP.getConnection();
	PreparedStatement psmt = conn.prepareStatement();
	Resultset rs =
	
	ResultSet rs = psmt.executeQuery();
	 
	while(rs.next()){
		CustomerBean article = new CustomerBean();
		article.setNo(rs.getInt(1));
		article.setParent(rs.getInt(2));
		article.setComment(rs.getInt(3));
		article.setCate(rs.getString(4));
		article.setTitle(rs.getString(5));
		article.setContent(rs.getString(6));
		article.setFile(rs.getInt(7));
		article.setHit(rs.getInt(8));
		article.setUid(rs.getString(9));
		article.setRegip(rs.getString(10));
		article.setRdate(rs.getString(11));
		article.setNick(rs.getString(12));
		
		articles.add(article);
	}
	
	rs.close();
	psmt.close();
	conn.close();		
}catch(Exception e){
	e.printStackTrace();
}

return articles;

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>shop</title>
	</head>
	<body>
		<h3>고객목록</h3>
		<a href="../index.jsp">고객목록</a>
		<a href="./order.jsp">주문목록</a>
		<a href="./product.jsp">상품목록</a>
		<table border="1">
			<tr>
	            <th>아이디</th>
	            <th>이름</th>
	            <th>휴대폰</th>
	            <th>주소</th>
	            <th>가입일</th>
        	</tr>
        	<tr>
	        	<td>C101</td>
	           	<td>김유신</td>
	            <td>010-1234-1001</td>
	            <td>김해시 봉황동</td>
	            <td>2022-01-01</td>
	        </tr>        					
		</table>
	</body>
</html>