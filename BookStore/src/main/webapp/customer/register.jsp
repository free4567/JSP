<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�����</h3>
		<a href="../index.jsp">ó������</a>
		<a href="./list.jsp">�����</a>
		<form action="#">
		  <table border="1">			
	          <tr>
		         <td>����ȣ</td>
		         <td><input type="text" name="bookId"/></td>
	          </tr>
	          <tr>
		          <td>����</td>
		          <td><input type="text" name="bookName"/></td>
	          </tr>
	          <tr>
		           <td>�ּ�</td>
		           <td><input type="text" name="publisher"/></td>
	           </tr>
	           <tr>
		           <td>�޴���</td><td><input type="text" name="price"/></td>
	           </tr>
	           <tr>
	               <td colspan="2" align="right"><input type="submit" value="���"></td>		              
	            </tr> 
	       </table>		
	</form>
</body>
</html>