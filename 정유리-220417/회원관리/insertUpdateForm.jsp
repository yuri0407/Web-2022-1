<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<% 
		String id = request.getParameter("id");
		String name = "";
		String pwd = "";
		String action = "insertPro.jsp";
		
		

		if(id!=null || id==""){

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
			
			
			
			//5. 반환된 데이터 출력
			rs.next();
			name = rs.getString("name");
			pwd = rs.getString("pwd");
				
			action = "updatePro.jsp";
			
			//6. 객체 해제
			rs.close();
			pstmt.close();
			con.close();
		}else
			id = "";
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
   <h2>회원정보수정</h2>
   <form name="login" action=<%=action %> method="post">
      아이다 : <input type="text" name="id" value=<%=id %>> <br>
      이름 : <input type="text" name="name" value=<%=name %>> <br>
      암호 : <input type="password" name="pw" value=<%=pwd %>> <br> <br>
      <input type="submit" value="변경저장">
      <button type="button" onclick="location.href='list.jsp'">목록조회</button>
      <button type="button" onclick="location.href='delete.jsp'">삭제</button>
   </form>
</body>
</html>