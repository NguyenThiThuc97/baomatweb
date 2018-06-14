    <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Trung tâm tin học Cybersoft</title>
  <meta charset="utf-8">
  <link rel="stylesheet" style="text/css" href="css/Reset.css">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
  
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
        <li class="active"><a href="TinTuc.jsp">Tin tức</a></li>
        <li><a href="Lienhe.jsp">Liên hệ</a></li>
        <c:if test="${user!=null && quyenhan == 'Admin'}"><li><a href="Admin.jsp">Quản lý tài khoản</a></li></c:if>
        <c:if test="${user!=null && quyenhan != 'Admin'}"><li><a href="User.jsp">Quản lý tài khoản</a></li></c:if>
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
<!-- slide -->
   <div class="container">
        <h3 class="text-center"style="color: red">Tặng 50 suất học tiếng Anh giao tiếp miễn phí cho 50 người đăng kí đầu tiên trong đợt khai giảng ngày 03/01/2018.</h3>
        <p style="color: burlywood"><span class="glyphicon glyphicon-time"> 12/12/2017</span></p>
        <p>Tiếng Anh đã trở thành ngôn ngữ của toàn cầu. Sở hữu tiếng Anh tốt tức là bạn đang tự mở ra cho mình rất nhiều cơ hội hấp dẫn:</p>
        <ul>
            <li>Ứng viên được vào các tập đoàn lớn và các công ty đa quốc gia.</li>
            <li>Có thu nhập cao và cơ hội thăng tiến tốt.</li>
            <li>Dễ dàng tiếp cận với những chân trời kiến thức mơi.</li>
            <li>Tự tin vi vu khắp thế gian.</li>
            <li>Và nhiều nhiều hơn nữa.</li>
        </ul>
        <p>Với mong muốn mang đến cho các bạn học viên trọn bộ kỹ năng Tin học - Ngoại ngữ, giúp bạn dễ dàng hoà nhập trong thời đại "thế giới phẳng", <strong>Trung tâm tin học Cybersoft</strong> hợp tác với <strong>trung tâm ngoại ngữ Á Châu</strong> đào tạo chương trình <a href="http://achauenglish.edu.vn/khoa-hoc/anh-van-luyen-nghe-noi-4.html">tiếng Anh giao tiếp</a></p>
        <p>Chương trình học gồm 4 cấp độ: <strong>Khởi động, Xuất phát, Tăng tốc, Về đích</strong> giúp bạn:</p>
        <ul>
            <li>Chú trọng khắc phục lỗi ngữ âm, rèn ngữ điệu.</li>
            <li>Phát huy điểm mạnh, chia tay điểm yếu, phát triển kỹ năng từng học viên với lộ trình và phương pháp phù hợp nhất - Phương pháp cá nhân hoá.</li>
            <li>Hình thành thói quen phản xạ giao tiếp một cách tự nhiên.</li>
            <li>Hình thành thói quen tự học với giáo trình hiện đại của Oxford.</li>
            
        </ul>
        <div style="margin: 15px;">
            <img src="Image/khaigiang.PNG">
        </div>
        <p>Đăt biệt trong đợt khai giảng đầu tiên tại toà nhà <strong>Trung tâm tin học - cơ sơ 137E Nguyễn Chí Thanh Q5</strong>, chúng tôi dành tặng <strong>50 suất học Tiếng Anh giao tiếp miễn phí</strong> cho 50 học viên đăng ký đầu tiên tại bất kỳ khoá học nào trong đợt <strong> Khai giảng ngày 03-01-2018</strong> tạ Trung tâm. </p>
        <p>Thông tin lớp Tiếng Anh giao tiếp miễn phí:</p>
        <ul>
            <li><strong>Lớp: Khởi động 1</strong></li>
            <li><strong>Thòi lượng: 5 tuần</strong></li>
            <li><strong>Thời gian học: Tối 2-4-6 hoặc Tối 3-5-7</strong></li>
        </ul>
        <p>Tham khảo thêm thông tin các lớp học khác <a href="http://achauenglish.edu.vn/khoa-hoc">Tại đây</a></p>
        <p>Ngoài quà tặng đặt biệt dành cho 50 bạn đăng ký đầu tiên các lớp tin học khai giảng đợt 03-01-2018. Trung tâm còn dành tặng những phần quà giá trị cho các học viên khi đăng ký học tại Trung tâm.</p>
        <h3><strong>Đăng ký ngay và liền lun để "Học 1 được 2" nào bạn ơi!</strong></h3>
        <h4 style="color: blue"><strong>Chúc các bạn thành công!</strong></h4>
    </div>
           <!-- footer-->
<div class="footer" style="background-color: #49b9ec">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-4">

        <div class="tencs" style="padding-top: 15px;">
          <b>Trụ sở chính :</b>
        </div>
        <div>
          <span class="glyphicon glyphicon-map-marker" style="width: 15px"></span>
          Lê Văn Việt, phường Tăng Nhơn Phú A, quận 9, Tp Hồ Chí Minh
        </div>

        <div style="margin-top: 5px;">
          <span class="glyphicon glyphicon-phone-alt" style="width: 15px"></span>
          0971899093
        </div>

      </div>
      <div class="col-md-4">
        <div class="tencs" style="padding-top: 15px;">
          <b>Cơ sở 2: </b>
        </div>
        <div>
          <span class="glyphicon glyphicon-map-marker" style="width: 15px"></span>
           288A An Dương Vương, phường 4, quận 5,Tp Hồ Chí Minh
        </div>

        <div style="margin-top: 5px;">
          <span class="glyphicon glyphicon-phone-alt" style="width: 15px"></span>
          01672074734
        </div>


      </div>
      <div class="col-md-4">
        <div class="tencs" style="padding-top: 15px;">
          <b>Cơ sở 3: </b>
        </div>
        <div>
          <span class="glyphicon glyphicon-map-marker" style="width: 15px"></span>
         9 Trần Hưng Đạo, Nguyễn Thái Bình, Quận 1, Hồ Chí Minh, Việt Nam
        </div>

        <div style="margin-top: 5px;">
          <span class="glyphicon glyphicon-phone-alt" style="width: 15px"></span>
         0919028477
        </div>

        
      </div>


    </div>
    <div style="font-style: italic; font-size: 18px;" >
      Copyright © Trung Tâm Tin Học Cybersoft
      
    </div>
  </div>
   
</div>
<!-- footer-->
</body>
</html>