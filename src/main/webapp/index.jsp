<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My First JSP Page</title>
</head>
<body>
	<h2>This page demonstrates use of java code inside html</h2>
	<% 
		int a = 10, b = 20, result = a + b;
		out.println("Summation : " + result);
	%>
	<%!
		int x = 5, y = 7;
	%>
	<%
		out.println("Before swapping x = " + x + ", y = " + y);
		x = x + y;
		y = x - y;
		x = x - y;
		out.println("After swapping x = " + x + ", y = " + y);
	%>
	<%!
	
		int multiplication(int a, int b){
			return a * b;	
		}
	%>
	<p>The Result of multiplication : <%= multiplication(5, 10)	%> </p>
	<p>
		<%! int num = 5; %>
		<%
			if(num % 2 == 0){
				out.println(num + " is even");				
			}
			else{
				out.println(num + " is odd");
			}
		%>
	</p>
	<p>
		<%! int sum = 0; %>
		<%
			for(int i = 1; i <= 10; i=i+1){
				sum = sum + i;
				out.println("i : " + i + " , sum : " + sum +"<br>");			
			}
		%>
		<h3>The summation of first 10 numbers : <%= sum %> </h3>
	</p>
	
</body>
</html>