<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%
	//1. jdbc driver를 로드한다.
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와의 연결(connection)을 생성한다.
	String url = "jdbc:mariadb://localhost:3333/yuridb";
	String user = "yuri";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	//3. 연결 후 그 통로를 통해 sql문을 실행한다.
	String sql = "select * from review";
	
	
	Statement stmt = con.createStatement();
	
	
	//4. SQL 실행
	ResultSet rs = stmt.executeQuery(sql);
	
%>



<!DOCTYPE html>
<html lang="en">
<head>
  <title>도서리뷰</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Book Review</h2> 
  
  
  <button type="button" class="btn btn-dark" onclick="location.href='writeReview.jsp'">리뷰등록</button>	
  
  
  <table class="table table-striped">
    <thead>
      <tr>
      	<!-- <th>No.</th> -->
        <th>닉네임</th>
        <th>도서명</th>
        <th>리뷰내용</th>
      </tr>
      
<%
	while(rs.next()){		
		
		int rNum = rs.getInt("rNum");
		String name = rs.getString("name");
		String bName = rs.getString("bName");
		String content = rs.getString("content");
		
		

%>



    </thead>
    <tbody>
      <tr>
        <td><a href=updateReview.jsp?rNum=<%=rNum %>><%=name %></a></td>
        <td><%=bName %></td>
        <td><%=content %></td>
        <%	}%>
        
    </tbody>
  </table>
  
  <h6>*번호를 클릭하면 수정화면으로 넘어갑니다.</h6>
</div>

</body>
</html>
