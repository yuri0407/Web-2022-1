<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
   <h2>로그인</h2>
   <form name="login" action="loginPro.jsp" method="post">
      아이다 : <input type="text" name="id" /> <br>
      암호 : <input type="password" name="pw" /> <br /> <br>
      <input type="submit" value="로그인" />
   </form>
</body>
</html>