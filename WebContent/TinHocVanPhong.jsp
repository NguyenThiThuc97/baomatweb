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
        <li class="dropdown active">
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
<div class="slide" style="margin-top: -20px;">
    <div class="container">
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

      <div class="item active">
        <img src="Image/thvp1.JPG" alt="Chania" width="1800" >
        
      </div>

      <div class="item">
        <img src="Image/thvp2.JPG" alt="Chania" width="1800" >
       
      </div>
    
      <div class="item">
        <img src="Image/thvp3.JPG" alt="Flower" width="1700" >
        
      </div>

      <div class="item">
        <img src="Image/thvp4.JPG" alt="Flower" width="1700" >
        
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
        
    </div>

</div>

<!-- slide-->

<div class="noidung" style="margin-top: 15px;">
  <div class="container">

    <div class="col-md-9">

      <div class="col-md-4" style="text-align: center;padding-left: 5px;
    padding-right: 5px;">
              <img src="Image/thvp6.JPG">
      </div>
<!---->
      <div class="col-md-8" style=" padding-left: 50px;
    padding-right: 5px;">
        <h1 style="text-align: center;text-transform: uppercase;font-size: 20px;color: #0082c8;font-weight: bold;line-height: 20px;"> tin học văn phòng cơ bản </h1>

         <!---->

        <div class="content"  style="margin-left: 20px;">
          
          <ul>
            <li>
              Là khóa học nền tảng hỗ trợ việc tiếp thu dễ dàng ác kiến thức tin học chuyên sâu.
            </li>
            <li>
              Rèn luyện kỹ năng sử dụng hiệu quả Word ,Excel, Powerpoint
            </li>
            <li>
              Trang bị những kiến thức tin học thiết thực , úng dụng thường xuyên trong học tập và cuộc sống 
            </li>
            

          </ul>
        </div>
        <!---->

       

      </div>

      <!---->
 
    </div>
    <!---->

    
  </div>
  <!-- doi tuong tham gia-->
  <div class="doituongthamgia" style="margin-top: 15px;">
          <div class="container">
            <h4 style="text-transform: uppercase;color: #f78f20; font-weight: bold; margin-bottom: 40px;"> đối tượng tham gia </h4>
            <img src="Image/line4.JPG" style="margin-top: -30px;">
            <div class="noidungthamgia">
              <ul>
                <li>
                  Học viên đang bắt đầu những trải nghiệm về tin học 
                </li>
                <li>
                  Học viên muốn hệ thống lại toàn bộ kiế thức cơ bản trong tin học 
                </li>
                <li>
                  Học viên muốn cập nhật những kiến thưc tin học mới đang được sử dụng rộng rãi trong doanh nghiệp 
                </li>

              </ul>
            </div>
          </div>
  </div>
  <!-- doi tuong tham gia-->

  <!--noi dung -->
  <div class=" noidungkhoahoc">
    <div class="container">
      <h4 style="text-transform: uppercase;color: #f78f20; font-weight: bold;margin-bottom: 40px;"> đối tượng tham gia </h4>
      <img src="Image/line4.JPG" style="margin-top: -30px;">
      <div class=" contentkhoahoc">

        <div>
          <strong>1. Hiểu biết về Công nghệ thông tin cơ bản</strong>
        </div>
        <ul>
          <li>
            Kiến thức cơ bản về máy tính và mạng máy tính
          </li>
          <li>
             Các ứng dụng của công nghệ thông tin - truyền thông (CNTT -TT)
          </li>
          <li>
             An toàn lao động và bảo vệ môi trường trong sử dụng công nghệ thông tin - truyền thông
          </li>
          <li>
             Các vắn đề an toàn thông tin cơ bản khi làm việc với máy tính
          </li>
          <li>
            Một số vấn đề cơ bản liên quan đến pháp luật trong sử dụng công nghệ thông tin
          </li>
        </ul>

        <strong> 2. Sừ dụng máy tính cơ bản</strong>
        <ul>
          <li>
             Các hiểu biết cơ bản để bắt đầu làm việc với máy tính
          </li>
          <li>
            Làm việc với hệ điều hành
          </li>
          <li>
             Thao tác trong VVindovvs Explorer
          </li>
          <li>
             Thao tác trên màn hình Desktop
          </li>
          <li>
             Control panel
          </li>
          <li>
             Kiểu gõ Tiếng Việt
          </li>
        </ul>
        <strong>3. Microsott Word cơ bản</strong>
        <ul>
          <li>
             Tồng quan về Microsoít VVord
          </li>
          <li>
             Một số thao tác cơ bản và thông dụng
          </li>
          <li>
             Định dạng đoạn văn bản
          </li>
        </ul>
        <strong> 4. Microsoft Powerpoint cơ bàn</strong>
        <ul>
          <li>
            Giới thiệu
          </li>
          <li>
            Các thao tác thêm, xóa slide, chèn hình ảnh
          </li>
          <li>
            Sử dụng định dạng Themes có sẵn
          </li>
          <li>
            Đưa biểu đồ, sơ đồ tồ chức vào trong trang thuyết trình
          </li>
          <li>
            Thiết lập ứng dụng
          </li>
        </ul>
        <strong> 5. Microsoft Excel cơ bản</strong>
        <ul>
          <li>
             Tồng quan về Microsott Excel
          </li>
          <li>
             Định dạng dữ liệu trong Excel
          </li>
          <li>
             Hàm trong bảng tính Excel
          </li>
          <li>
             Kết xuất và phân phối trang tính, bảng tính
          </li>
        </ul>

        <strong>6. Ôn tập</strong>

      </div>
    </div>
  </div>

  <!--noi dung -->


  <!-- ket qua dat duoc-->
  <div class="ketqua">
    <div class="container">
       <h4 style="text-transform: uppercase;color: #f78f20; font-weight: bold; margin-bottom: 40px;"> kết qủa đạt được </h4>
        <img src="Image/line4.JPG" style="margin-top: -30px;">
        <div class="noidungdatduoc">
          <ul>
            <li>
              Nhanh chóng nắm vững những kiến thưc cơ bản về máy tính
            </li>
            <li>
              Xử lý thuần thục những thao tác làm việc avf tiện ích trên môi trường Window
            </li>

            <li>
              Soạn thảo và trình bày văn bản một cách chuyên nghiệp với Microsoft Word
            </li>
            <li>
              Tạo lập và trình bày dễ dàng với các bảng tính trogn Excel
            </li>
            <li>
              Áp dụng vào thực tế các công thưc tính toán trên Excel
            </li>
            <li>
              Hiểu rõ hơn về mạng máy tính và hệ điều hành trong Windows
            </li>
            <li>
              Thao tác nhanh chóng trên internet nhằm dễ dàng nắm bắt những khoa học kỹ thuật mới
            </li>
          </ul>
        </div>
    </div>
  </div>



  <!-- ket qua dat duoc-->

  <!-- thoi luong hoc phi-->
  <div class="thoiluonghocphi">
    <div class="container">
      <h4 style="text-transform: uppercase;color: #f78f20; font-weight: bold; margin-bottom: 40px;"> thời lượng và học phí </h4>
      <img src="Image/line4.JPG" style="margin-top: -30px;">
      <div class="hocphi">
        <ul>
          <li>
            Thời gian học 12 tuần 
          </li>
          <li>
            Tổng số tiết: 65 tiết, thực hành trực tiếp trên máy
          <li>
            Học phí : 950.000 VND / khóa ( có chế độ miễn giảm cho mỗi khóa)
          </li>
        </ul>
      </div>
    </div>
  </div>

  <!-- thoi luong hoc phi-->

  <!-- học viên-->
<div class="hocvien text-center" style="margin-top: 30px; margin-bottom: 15px;">
  <div class="container">

    <div class="tieudehocvien" style="margin-top: 15px;margin-bottom:15px; ">
      <h3 style="text-transform: uppercase; font-weight: bold; color: orange;"> cảm nhận học viên </h3>
      <img src="Image/line3.JPG">
    </div>
    <!-- slide quang cao-->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>


    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="Image/cnhv1.JPG" alt="Chania" width="1700" >
        
      </div>

      <div class="item">
        <img src="Image/cnhv2.JPG" alt="Chania" width="1700" >
       
      </div>
    
      <div class="item">
        <img src="Image/cnhv3.JPG" alt="Flower" width="1700" >
        
      </div>

      <div class="item">
        <img src="Image/cnhv4.JPG" alt="Flower" width="1700" >
        
      </div>
  
    </div>

    <!-- Left and right controls -->
    
  </div>


  </div>
</div>


<!-- học viên-->


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