<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>    
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
<title>Đăng kí tài khoản    </title>
</head>
<body>
<div class="container">
  <h2>Đăng kí tài khoản</h2>
  <form action="DangKi" method="post">
  <div class="col-sm-7 slideanim">
  <div class="row" >
    <div class="col-md-12">
      <div class="form-group">
      <label for="text">Họ và tên:</label>
      <input type="text" class="form-control" id="text" placeholder="Nhập họ và tên của bạn" name="name">
    </div>
    </div>
    <div class="col-md-12">
      <div class="form-group">
      <label for="text">Số điện thoại:</label>
      <input type="text" class="form-control" id="text" placeholder="Nhập số điện thoại của bạn" name="sdt">
    </div>
    </div>
    <div class="col-md-12">
      <div class="form-group">
      <label for="text">Địa chỉ:</label>
      <input type="text" class="form-control" id="text" placeholder="Nhập địa chỉ của bạn" name="diachi">
    </div>
    </div>
    <div class="col-md-12">
      <div class="form-group">
      <label for="text">Nghề nghiệp:</label>
      <input type="text" class="form-control" id="text" placeholder="Nhập nghề nghệp của bạn" name="nghenghiep">
    </div>
    </div>
    <div class="col-md-12">
    <div class="form-group">
      <label for="email">Địa chỉ email:</label>
      <input type="email" class="form-control" id="email" placeholder="Nhập địa chỉ email" name="email">
    </div>
    </div>
      <div class="col-md-12">
    <div class="form-group">
      <label for="pwd">Mật khẩu:</label>
      <input type="password" class="form-control" id="pwd" placeholder="nhập password" name="password">
    </div>
    </div>
      <div class="col-md-12">
    <div class="form-group">
      <label for="pwd">Nhập lại mật khẩu:</label>
      <input type="password" class="form-control" id="pwd2" placeholder="Nhập lại password" name="password2">
       <p style="color:orange;"><c:out value="${ThongBao }"></c:out></p>
    </div>
    </div>
    </div>
    <input type="submit" name="Add" value="Tạo tài khoản">
    </div>
  </form>
</div>
</body>
</html>