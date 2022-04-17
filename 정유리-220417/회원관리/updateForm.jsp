<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<% 
		String id = request.getParameter("id");

		//1. jdbc driver를 로드한다.
		Class.forName("org.mariadb.jdbc.Driver");
		
		//2. db와의 연결(connection)을 생성한다.
		String url = "jdbc:mariadb://localhost:3333/yuridb";
		String user = "yuri";
		String passwd = "1111";
		Connection con = DriverManager.getConnection(url, user, passwd);
		
		//3. 연결 후 그 통로를 통해 sql문을 실행한다.
		String sql = "select * from login where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		//4. SQL 실행
		ResultSet rs = pstmt.executeQuery();
		
		String name="";
		String pwd="";
		
		
		//5. 반환된 데이터 출력
		while(rs.next()){
			name = rs.getString("name");
			pwd = rs.getString("pwd");
		}
		
		//6. 객체 해제
		rs.close();
		pstmt.close();
		con.close();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>회원정보수정</title>
</head>
<body>

<div class="container">
	<h2>회원정보수정</h2>
	
	<form name="login" action="updatePro.jsp" method="post">
	<div class="form-group">
  <label>아이디</label>
  <input type="text" class="form-control" name="id" value=<%=id %>>
	</div>
	<div class="form-group">
  <label>이름</label>
  <input type="text" class="form-control" name="name" value=<%=name %>>
	</div>
	<div class="form-group">
  <label>비밀번호</label>
  <input type="password" class="form-control" name="pwd" value=<%=pwd %>>
	</div>
	
	<input type="submit" class="btn btn-light" value="수정">
	<a href="delete.jsp?id=<%=id %>"><button type="button" class="btn btn-light">삭제</button></a>
	</form>

</div>
</body>
</html>