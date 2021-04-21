<%@ page pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://billion.com/jsp/tag/custom" prefix="ct"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	${"循环遍历List"}
	<br/>
	<% 
		List students = new ArrayList(); 
		students.add("张三");
		students.add("李四");
		students.add("王五");
		pageContext.setAttribute("students", students);
	%>
	<ct:ForEach items="${students}" var="student">
		${student} <br/>
	</ct:ForEach>
	${"===================="}
	<br/><br/>
	${"循环遍历Set"}
	<br/>
	<% 
		Set schools = new HashSet(); 
		schools.add("杭电");
		schools.add("武大");
		schools.add("地大");
		pageContext.setAttribute("schools", schools);
	%>
	<ct:ForEach items="${schools}" var="school">
		${school} <br/>
	</ct:ForEach>
	${"===================="}
	<br/>
	${"循环遍历Map"}
	<br/>
	<% 
		Map<String, Object> infos = new HashMap(); 
		infos.put("name", "Jack");
		infos.put("age", 15);
		infos.put("sex", "男");
		pageContext.setAttribute("infos", infos);
	%>
	<ct:ForEach items="${infos}" var="info">
		${info} <br/>
	</ct:ForEach>
	${"===================="}
	<br/>
	${"循环遍历int[]"}
	<br/>
	<% 
		int[] ages = new int[3]; 
		ages[0] = 20;
		ages[1] = 30;
		ages[2] = 40;
		pageContext.setAttribute("ages", ages);
	%>
	<ct:ForEach items="${ages}" var="age">
		${age} <br/>
	</ct:ForEach>
	${"===================="}
	<br/>
	${"循环遍历double[]"}
	<br/>
	<% 
		double[] scores = new double[3]; 
		scores[0] = 20.5;
		scores[1] = 30.6;
		scores[2] = 40.7;
		pageContext.setAttribute("scores", scores);
	%>
	<ct:ForEach items="${scores}" var="score">
		${score} <br/>
	</ct:ForEach>
	${"===================="}
</body>
</html>