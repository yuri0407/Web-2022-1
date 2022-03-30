<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("nick");
	String memo = request.getParameter("memo");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 내용</title>
</head>
<style>
	td{
		padding : 10px;
	}
</style>
<body>
	<table>
		<tr>
			<td>닉네임</td>
			<td><%=name %>
		</tr>
		<tr>
			<td>입력내용</td>
			<td><%=memo %>
		</tr>
	</table>
</body>
</html>