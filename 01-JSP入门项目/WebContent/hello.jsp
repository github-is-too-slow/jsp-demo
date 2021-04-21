<%@ page pageEncoding="utf-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ page errorPage="/error.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println("hello JSP");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY/MM/DD");
	%>
	date=<%=sdf.format(date) %><br>
	<% out.print("date=" + sdf.format(date)); %>
	<% 
		pageContext.setAttribute("key", "hello world");
	%>
	<% out.print(pageContext.getAttribute("key")); %>
	3/0=<%=3/0 %>
</body>
</html>