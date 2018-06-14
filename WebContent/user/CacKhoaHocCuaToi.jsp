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
  <link rel="stylesheet" style="text/css" href="css/Reset.css">
<title>Trung tâm tin học Cybersoft</title>
</head>
<body>
<!-- slide quang cao-->
<div style="margin-bottom: 10px;">
  <div class="container-fluid ">
     <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active" >
        <img src="Image/qc1.JPG" alt="Chania" width="100%" >
        
      </div>

      <div class="item">
        <img src="Image/qc2.JPG" alt="Chania" width="100%" >
       
      </div>
    
      <div class="item">
        <img src="Image/qc3.JPG" alt="Flower" width="100%" >
        
      </div>

      <div class="item">
        <img src="Image/qc4.JPG" alt="Flower" width="100%" >
        
      </div>
  
    </div>

  </div>
    
  </div>
  
</div>
<!---->

<!-- menu-->
<div class="menu">     
   <nav class="navbar navbar-inverse">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#abc">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a href="Home.jsp"><img src="Image/logo.png" ></a>
    </div>
    <div class="collapse navbar-collapse" id="abc">
      <ul class="nav navbar-nav">
        <li ><a href="#">Trang chủ</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Chương trình đào tạo <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="LapTrinhWeb.jsp">Lập trình Web</a></li>
            <li><a href="TinHocVanPhong.jsp">Tin học văn phòng</a></li>
            <li><a href="#3">Lập trình căn bản</a></li>
            <li><a href="#4">Lập trình android</a></li>
            <li><a href="#5">Lập trình Font-end</a></li>
            <li><a href="#6">Mạng máy tính</a></li>
          </ul>
        </li>
        <li><a href="LichKhaiGiang">Lịch khai giảng</a></li>
        <li><a href="TinTuc.jsp">Tin tức</a></li>
        <li><a href="Lienhe.jsp">Liên hệ</a></li>
        <c:if test="${user!=null && quyenhan == 'Admin'}"><li><a href="Admin.jsp">Quản lý tài khoản</a></li></c:if>
        <c:if test="${user!=null && quyenhan != 'Admin'}"><li class="active"><a href="User.jsp">Quản lý tài khoản</a></li></c:if>
      </ul>
      <c:if test="${user==null}">
      <ul class="nav navbar-nav navbar-right" style="margin-right: 10px;">
        <li><a href="DangKi"><span class="glyphicon glyphicon-user"></span> Đăng kí </a></li>
        <li><a href="DangNhap"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập </a></li>
      </ul>
      </c:if>
      <c:if test="${user != null }">
        <ul class="nav navbar-nav navbar-right" style="margin-right: 10px;">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${user} </a></li>
        <li><a href="DangXuat.jsp"><span class="glyphicon glyphicon-log-in"></span>Đăng xuất</a></li>
      </ul>
      </c:if>
      
      </div>
      </nav>
    </div>
<div class="container">
    <div class="row">
        <div class="col-sm-3 col-md-3" >
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-home-close">
                            </span>Quản lý lớp học</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-user text-primary"></span><a href="ThongTinCaNhan">Thông tin tài khoản</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-th-large text-success"></span><a href="CacKhoaHocCuaToi">Các khóa học của tôi</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-lock text-info"></span><a href="DoiMatKhau">Đổi mật khẩu</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
             </div>
          </div>
          
           <div class="col-sm-9 col-md-9" style="float:right">
            <h3 style="color:red">Các khóa học của tôi</h3>
        <div class="table-responsive">
              <table class="table table-bordred table-striped">
                   
                   <thead>
                   <th>Mã lớp</th>
                   <th>Tên chương trình đào tạo</th>
                   <th>Thời khóa biểu</th>
                   <th>Phòng học</th>
                   <th>Học phí</th>
                   <th>Ngày khai giảng</th>
                   <th>Thời gian học</th>
                   </thead>
                   <c:forEach items="${DSKHOAHOC}" var="b">
                 <tr>
                    <td>${b.malop}</td>
                    <td>${b.tenctdt}</td>
                    <td> ${b.thoigian}</td>
                    <td> ${b.phonghoc}</td>
                    <td> ${b.hocphi}</td>
                    <td> ${b.ngaykhaigiang}</td>
                    <td> ${b.thoigianhoc}</td>
                </tr>
                </c:forEach>
                        </table>
                
            </div>
        </div>
       </div>
    </div>
</body>
</html>