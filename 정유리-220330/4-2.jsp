<%@ page language="java" contentType="text/html; charset=utf-8"

    pageEncoding="utf-8"%>

    

<%

	request.setCharacterEncoding("utf-8");
	
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	int sum = Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math);
	float avg = (Float.parseFloat(kor) + Float.parseFloat(eng) + Float.parseFloat(math)) / 3;
	

%>

 

<!DOCTYPE html>

<html>

<head>

	<meta charset="utf-8">

	<title>Insert title here</title>

</head>

<body>

	국어 : <%=kor %><br>

	영어 : <%=eng %><br>

	수학 : <%=math %><br><br>

	총점 : <%=sum %><br>

	평균 : <%=String.format("%.2f", avg) %><br>

</body>

</html>