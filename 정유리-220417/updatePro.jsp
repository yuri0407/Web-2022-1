<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    %>
    
<%
	//한글 처리
	request.setCharacterEncoding("utf-8");

	

	//웹 브라우저에서 전달된 정보
	int rNum = Integer.parseInt(request.getParameter("rNum"));
	String name = request.getParameter("name");
	String bName = request.getParameter("bName");
	String content = request.getParameter("content");
	
	
	//1. 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. 커넥션 연결
	String url = "jdbc:mariadb://localhost:3333/yuridb";
	String user = "yuri";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	//3. SQL문 준비
	String sql = "update review set name=?, bName=?, content=? where rNum=?";
	
	
		
	
	//4. SQL문 실행
	/* Statement stmt = con.createStatement(); */
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, bName);
	pstmt.setString(3, content);
	pstmt.setInt(4, rNum);
	
	/* int i = stmt.executeUpdate(sql); */
	int i = pstmt.executeUpdate();
	
	//5. 객체 해제
	pstmt.close();
	con.close();
	
	response.sendRedirect("bookReview.jsp");
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
</body>
</html>