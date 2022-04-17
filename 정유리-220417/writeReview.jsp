<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<title>리뷰등록</title>
</head>
<body>
<div class="container">
	<h2>리뷰작성</h2>
	
	<form action="Success.jsp">
	
	<div class="form-group">
  <label>닉네임</label>
  <input type="text" class="form-control" name="name">
	</div>
	<div class="form-group">
  <label>도서명</label>
  <textarea class="form-control" rows="1" name="bName"></textarea>
	</div>
	<div class="form-group">
  <label>리뷰내용</label>
  <textarea class="form-control" rows="5" name="content"></textarea>
	</div>
	
	<input type="submit" class="btn btn-light" value="등록">
	
	</form>
</div>
	
</body>
</html>