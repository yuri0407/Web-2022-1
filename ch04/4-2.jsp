<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

    

<%

	request.setCharacterEncoding("utf-8");

	

	int kor = Integer.parseInt(request.getParameter("kor"));

	int eng = Integer.parseInt(request.getParameter("eng"));

	int math = Integer.parseInt(request.getParameter("math"));

%>

 

<!DOCTYPE html>

<html>

<head>

	<meta charset="EUC-KR">

	<title>Insert title here</title>

</head>

<body>

	���� : <%=kor %><br>

	���� : <%=eng %><br>

	���� : <%=math %><br><br>

	���� : <%=kor + eng + math %><br>

	��� : <%=(kor+eng+math)/3 %><br>

</body>

</html>