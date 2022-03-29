<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	관심언어 : 
	<%
	request.setCharacterEncoding("utf-8");

	String[] lang = request.getParameterValues("lang");
	
	for(String s : lang){
		out.println(s);
	}
	out.println("<br>");
	
	String hobby = request.getParameter("hobby");
	
%>
	취미 : <%=hobby %>
	
</body>
</html>