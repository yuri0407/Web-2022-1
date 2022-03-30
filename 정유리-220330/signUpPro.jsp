<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보</title>
</head>
<style>
	td{
		padding : 10px;	
	}
</style>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String mail = request.getParameter("mail");
		String addr = request.getParameter("addr");
	%>
	
	<h1>회원정보</h1>
	<table>
		<tr>
			<td>이름</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=gender %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=id %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=pwd %></td>
		</tr>
		<tr>
			<td>메일주소</td>
			<td><%=mail %></td>
		</tr>
		<tr>
			<td>거주지역</td>
			<td><%=addr %></td>
		</tr>
		<tr>
			<td>가입계기</td>
			<td>
			<%
					String[] intro = request.getParameterValues("intro");
					
					for(String s : intro){
						out.println(s);
					}
				%>			
			</td>
		</tr>
	</table>
	
	
</body>
</html>