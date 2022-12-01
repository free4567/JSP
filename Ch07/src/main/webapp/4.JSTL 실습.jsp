<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>4.JSTL 실습</title>
		<!-- 
			날짜 : 2022/11/07
			이름 : 이상헌
			내용 : JSTL(Java Standards Tag Library) 실습하기		
		 -->
	</head>
	<body>
		<h3>4.JSTL 실습</h3>
		
		<h4>스크립트릿</h4>
		<%
			// 변수 선언
			String str = "hello";
			out.print("<p>str : "+str+"</p>");
			
			int num1 = 1;
			int num2 = 2;
			int num3 = 3;
					
			// 조건문
			if(num1 < num2){
					out.print("<p>num1은 num2보다 작다.</p>");
			}
			
			if(num1 > num2){	
				out.print("<p>num1은 num2보다 크다.</p>");
			}else{
				out.print("<p> num1은 num2보다 작다.</p>");		
			}
			
			if(num1 > num2){
				out.print("<p>num1은 num2보다 크다.</p>");
			}else if(num2 > num3){
					out.print("<p>num2은 num3보다 크다.</p>");
			}else {
				 	out.print("<p>num3이 가장 크다.</p>");
			}
			
			// 반복문
			for(int i=1 ; i<=5 ; i++){
				out.print("<p>i : "+i+"</p>");
			}
			
			String[] people = {"김유신", "김춘추", "장보고", "강감찬", "이순신"};
			for(String person : people){
					out.print("<span>"+person+"</span><br/>");
			}
			
			int sum = 0;
			for(int k=1 ; k<=10 ; k++){
				sum += k;
			}
			
			out.print("<p>1부터 10까지 합 : </p>")
		%>
		
		<h4>JSTL</h4>
		<c:set var= "str" value="hello"/>
		<p>str : ${str}</p>
		
		<c:set var="num1" value="1"/>
		<c:set var="num2" value="2"/>
		<c:set var="num3" value="3"/>
		
		
	</body>
</html>