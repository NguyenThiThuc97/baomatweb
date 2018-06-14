<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
        <li><a href="#">Trang chủ</a></li>
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
 <div id="fh5co-media-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 animate-box">
                        <div class="fh5co-cover" style="background-image: url(Image/tt1.PNG); ">
                            <div class="desc">
                                <a href="Tang50KhoaHoc.jsp"><p>Tặng 50 khoá học tiếng Anh giao tiếp miễn phí cho 50 người đăng kí đầu tiên trong đợt khai giảng ngày 03/01/2018</p></a>
                                <span>Tổng khai giảng</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="fh5co-cover">
                            <div class="fh5co-cover-hero animate-box">
                                <div class="fh5co-cover-thumb" style="background-image: url(Image/tt2.PNG); background-repeat: no-repeat"></div>
                                <div class="desc-thumb">
                                    <a href=""><h4 >[Thiết ké đồ hoạ] 21 công cụ miễn phí dành cho marketer</h4></a>
                                    <span>Web Design</span>
                                </div>
                            </div>

                            <div class="fh5co-cover-hero animate-box">
                                <div class="fh5co-cover-thumb" style="background-image: url(Image/tt3.PNG);"></div>
                                <div class="desc-thumb">
                                    <a href="LichNghiTet.jsp"><h4 >Thông báo lịch nghỉ tết 2018</h4></a>
                                    <span>Nghỉ lễ</span>
                                </div>
                            </div>

                            <div class="fh5co-cover-hero animate-box">
                                <div class="fh5co-cover-thumb" style="background-image: url(Image/tt4.PNG);"></div>
                                <div class="desc-thumb">
                                    <a href="#"><h4>[infographic] 10 cách thiết kế nội dung hấp dẫn thị giác</h4></a>
                                    <span>Web Design</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    <div class="wrapper">
  <div id="hpage_cats">
   
    <div class="fl_left">
      <h2><a href="#">Học phí &raquo;</a></h2>
      <img src="Image/hocphi.jpg" alt="" />
      <p><strong><a href="#">Hướng dẫn thanh toán học phí.</a></strong></p>
        <p>Để thanh toán học phí tạ <a href="Home.jsp">Cybersoft</a> bạn có thể làm môt sử dụng một số cách sau.</p>
    </div>
    <div class="fl_right">
      <h2><a href="#">Web Design &raquo;</a></h2>
      <img src="Image/onepage.png" alt="" />
      <p><strong><a href="#">[Miễn phí] Workshop Thiết kế sáng tạo Web One Page.</a></strong></p>
      <p>Cùng đến để cập nhật thêm kiến thức về Thiết kế WebSite và mang lại những kiến thức bộ ích nhất</p>
    </div>
    <br class="clear" />
    <div class="fl_left">
      <h2><a href="#">Web Design &raquo;</a></h2>
      <img src="Image/khaibut.png"   alt="" />
      <p><strong><a href="#">Khai bút đầu năm - Học thử miễn phí.</a></strong></p>
      <p>Cùng khai bút đầu năm với 2 buổi học thử hoàn toàn miễn phí tại Trung tâm tin học Cybersoft. Phương pháp học trực quan, sinh động sẽ đem đến cho học viên cái nhìn đầy lý thú về cái nghề Thiết kế Đồ hoạ</p>
    </div>
    <div class="fl_right">
      <h2><a href="#">Tin học cho trẻ &raquo;</a></h2>
      <img src="Image/5lydo2.png" alt="" />
      <p><strong><a href="#">5 lý do cho nên cho trẻ học lập trình</a></strong></p>
      <p>Bạn có biết những ích lợi từ việc học lập trình từ nhỏ là gì không? Hãy cùng Cybersoft tìm hiểu về 5 lý do vì sao nên cho trẻ học lập trình từ nhỏ </p>
    </div>
    <br class="clear" />
      <div class="fl_left">
      <h2><a href="#">Học phí &raquo;</a></h2>
      <img src="Image/blackFriday2.png" alt="" />
      <p><strong><a href="#">Vui học hè - Nhận ưu đại "khủng" từ chương trình BLACK FRIDAY.</a></strong></p>
        <p>Hè sẽ thật vui và ý nghĩa hơn nếu chúng ta bồi dưỡng thêm kiến thức và kinh nghiệm thực tế để bắt đầu năm học mới.</p>
    </div>
    <div class="fl_right">
      <h2><a href="#">Web Design &raquo;</a></h2>
      <img src="Image/HTML5.PNG" alt="" />
      <p><strong><a href="#">Workshop Thiết kế Banner động với HTML5 và CSS3.</a></strong></p>
      <p>Cùng đến để cập nhật thêm kiến thức về Thiết kế WebSite và mang lại những kiến thức bộ ích nhất</p>
    </div>
    <br class="clear" />
    <div class="fl_left">
      <h2><a href="#">Lập trình android &raquo;</a></h2>
      <img src="Image/thamquan.png"   alt="" />
      <p><strong><a href="#">Tham quan công thực tế của lớp học lập trình Android.</a></strong></p>
      <p>Cùng khai bút đầu năm với 2 buổi học thử hoàn toàn miễn phí tại Trung tâm tin học Cybersoft. Phương pháp học trực quan, sinh động sẽ đem đến cho học viên cái nhìn đầy lý thú về cái nghề Thiết kế Đồ hoạ</p>
    </div>
    <div class="fl_right">
      <h2><a href="#">Web Design &raquo;</a></h2>
      <img src="Image/dohoa2.png" alt="" />
      <p><strong><a href="#">Học đồ hoạ không khó, ngại gì không thử.</a></strong></p>
      <p>Ngày nay, khái niệm Thiết kế Đồ hoạ không còn xa lạ với nhiều người, đặc biệt là những bạn trẻ luôn cập nhật xu hướng mới mỗi ngày. Vậy sao không nằm bắt cơ hội ngay cho bản thân với một nghề đang HOT này.</p>
    </div>
    <br class="clear" />
    <div class="text-center">
      <ul class="pagination ">
        <li><a href="#">Trang đầu</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-backward"></span></a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-forward"></span></a></li>
        <li><a href="#">trang cuối</a></li>
  </ul>
    </div>
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
</div>
</body>
</html>