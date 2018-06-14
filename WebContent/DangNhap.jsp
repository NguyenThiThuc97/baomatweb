<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<c:set var="user" value="${user}" scope="session"></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" style="text/css" href="Reset.css">
   <link rel="stylesheet" style="text/css" href="style.css">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>Đăng nhập trung tâm tin học</h2>
  <form action="DangNhap" method="post">
    <div class="form-group">
      <label for="email">Tên đăng nhập:</label>
<!--       <input type="text" name="username" > -->
      <input type="email" class="form-control" placeholder="Enter email" name="username" >
    </div>
    <div class="form-group">
      <label for="pwd">Mật khẩu:</label>
<!--       <input type="text" name="password"> -->
      <input type="password" class="form-control" placeholder="Enter password" name="password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember">Lưu mật khẩu</label>
    </div>
    <input type="submit" value="login" name="login"/>
  </form>
  <div>
  <a href="DangKi.jsp"> bạn chưa có tài khoản?</a>
  </div>
</div>
</body>
</html>