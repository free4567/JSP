<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>고객등록</h3>
		<a href="../index.jsp">처음으로</a>
		<a href="./list.jsp">고객목록</a>
		<form action="#">
		  <table border="1">			
	          <tr>
		         <td>고객번호</td>
		         <td><input type="text" name="bookId"/></td>
	          </tr>
	          <tr>
		          <td>고객명</td>
		          <td><input type="text" name="bookName"/></td>
	          </tr>
	          <tr>
		           <td>주소</td>
		           <td><input type="text" name="publisher"/></td>
	           </tr>
	           <tr>
		           <td>휴대폰</td><td><input type="text" name="price"/></td>
	           </tr>
	           <tr>
	               <td colspan="2" align="right"><input type="submit" value="등록"></td>		              
	            </tr> 
	       </table>		
	</form>
</body>
</html>