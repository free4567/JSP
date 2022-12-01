<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>coustomer</title>
</head>
<body>
	<h3>고객수정</h3>
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
	               <td colspan="2" align="right"><input type="submit" value="수정"></td>		              
	            </tr> 
	       </table>		
	</form>
</body>
</html>