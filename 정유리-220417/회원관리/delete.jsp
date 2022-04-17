<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String id = request.getParameter("id");


   //1. DB 연동 드라이버 로드
   Class.forName("org.mariadb.jdbc.Driver");

   
   //2.연결 객체 생성
    String url = "jdbc:mariadb://localhost:3333/yuridb";
    String user = "yuri";
    String pwd = "1111";
    Connection con = DriverManager.getConnection(url, user, pwd); 
    
    
    //3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
    String sql = "DELETE FROM login WHERE id=?";
    
    PreparedStatement pstmt = con.prepareStatement(sql);   
    pstmt.setString(1, id);
    
    //5. SQL 실행
    int i = pstmt.executeUpdate();
 
    //6. 객체 해제
    pstmt.close();
    con.close();
 
   
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
alert("삭제되었습니다.");
location.href="list.jsp";
</script>
<body>


</body>
</html>