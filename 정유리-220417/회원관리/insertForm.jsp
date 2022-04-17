<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>로그인</title>
</head>
<body>
   
<div class="container">
	<h2>사용자입력</h2>
	
	<form action="insertPro.jsp">
	
	<div class="form-group">
  <label>아이디</label>
  <input type="text" class="form-control" name="id">
	</div>
	<div class="form-group">
  <label>이름</label>
  <input type="text" class="form-control" name="name">
	</div>
	<div class="form-group">
  <label>비밀번호</label>
  <input type="password" class="form-control" name="pwd">
	</div>
	
	<input type="submit" class="btn btn-light" value="등록">
	
	</form>
</div>   
</body>
</html>