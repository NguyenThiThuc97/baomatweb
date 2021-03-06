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
<title>Trung tâm tin học SPKT</title>
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
        <c:if test="${user!=null}"><li><a href="KTQuyen">Quản lý tài khoản</a></li></c:if>
<%--         <c:if test="${user!=null && quyenhan != 'Admin'}"><li><a href="KTQuyen">Quản lý tài khoản</a></li></c:if> --%>
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
    <div style="margin-bottom: 7px;">
    <img alt="LoGo trung tâm" src="Image/Lg.png">
    </div>
    <div class="row">
        <div class="col-sm-3 col-md-3" >
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span>danh mục các lớp học</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse ">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="DSLichKhaiGiang">Danh sách lớp học</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-flash text-success"></span><a href="ThemLichKhaiGiang">Thêm lớp học mới</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-file text-info"></span><a href="XemDanhSachHocVienTheoLop">xem học viên từng lớp học</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="#">Bình luận</a>
                                        <span class="badge">42</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th">
                            </span>Chương trình đào tạo</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="CCDT"><span class="glyphicon glyphicon-file"></span>Danh sách</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="ThemCCDT"><span class="glyphicon glyphicon-plus"></span>Thêm chương trình đào tạo mới</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="XemHocVienTheoCTDT"><span class="glyphicon glyphicon-search"></span>Danh sách học viên theo CTĐT</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user">
                            </span>Tài khoản</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="DSTaiKhoan"><span class="glyphicon glyphicon-list-alt"></span>Danh sách tài khoản</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="DSQuyenHan"><span class="glyphicon glyphicon-retweet"></span>Thay đổi quyền hạn</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
        <div class="col-sm-9 col-md-9" style="float:right">
            <h3 style="color:red">Danh mục lớp học</h3>
            <div class="panel-body form-horizontal payment-form">
                    <form action="XemHocVienTheoCTDT" method="post">
                    <div class="form-group">
                        <label for="concept" class="col-sm-4 control-label">Mã chương trình đào tạo</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="concept" name="malop">
                        </div>
                        <div class="col-sm-4">
                            <button type="submit" class="btn btn-default preview-add-button">
                                <span class="glyphicon glyphicon-search"></span> Xem
                            </button>
                        </div>
                    </div>
                    </form>
                    </div>
        <div class="table-responsive">
              <table class="table table-bordred table-striped">
                   
                   <thead>
                   <th>Lớp học</th>
                   <th>Tên đăng nhập</th>
                   <th>Họ tên</th>
                   <th>Số điện thoại</th>
                   </thead>
                   <c:forEach items="${DSLOP}" var="a">
                 <tr>
                    <td> ${a.lophoc}</td>
                    <td>${a.tendangnhap}</td>
                    <td>${a.hoten}</td>
                    <td> ${a.sdt}</td>
                </tr>
                </c:forEach>
                        </table>
                
            </div>
        </div>
        
     </div>
   </div>
 </body>
</html>