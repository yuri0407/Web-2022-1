<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
    
<%
	//한글 처리
	request.setCharacterEncoding("utf-8");

	
	
	//1. 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. 커넥션 연결
	String url = "jdbc:mariadb://localhost:3333/yuridb";
	String user = "yuri";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	//3. SQL문 준비
	/* String sql = "insert into login(id, pwd) values('"+ id +"', '"+ pwd +"')"; */
	String sql = "insert into login(id, name, pwd) values(?, ?, ?)";
	
	//웹 브라우저에서 전달된 정보
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
	
	//4. SQL문 실행
	/* Statement stmt = con.createStatement(); */
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, pwd);
	
	/* int i = stmt.executeUpdate(sql); */
	int i = pstmt.executeUpdate();
	
	//5. 객체 해제
	pstmt.close();
	con.close();
	
	response.sendRedirect("list.jsp");
	
%>