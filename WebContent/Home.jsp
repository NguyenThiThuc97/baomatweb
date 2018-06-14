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
        <li class="active"><a href="#">Trang chủ</a></li>
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
        <c:if test="${user!=null && quyenhan != 'Admin'}"><li><a href="User.jsp">Quản lý tài khoản</a></li></c:if>
      </ul>
      <c:if test="${user==null}">
      <ul class="nav navbar-nav navbar-right" style="margin-right: 10px;">
        <li><a href="DangKi"><span class="glyphicon glyphicon-user"></span> Đăng kí </a></li>
        <li><a href="DangNhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập </a></li>
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
<div style="margin-bottom: 50px; With: 80%">
  <div class="container-fluid">
   
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="4" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="Image/slide2.jpg" alt="Chania" width="100%" height="345">
        
      </div>

      <div class="item">
        <img src="Image/slide1.jpg" alt="Chania" width="100%" height="345">
        
      </div>
    
      <div class="item">
        <img src="Image/slide3.png" alt="Flower" width="100%" height="345">
        
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


<!-- slide -->





<!-- Tai sao -->
<div class="why text-center" style="margin-bottom: 30px;">
  <div class="tieudewhy" style="margin-top: 15px;margin-bottom:15px; ">
      <h3 style="text-transform: uppercase; font-weight: bold; color: orange;"> tại sao bạn chọn cybersoft</h3>
      <img src="Image/line3.JPG">

  </div>

  <div class="container">
    <div class="row">
      <div>
        <div class="col-md-4">
          <p style="font-weight: bold; font-size: 16px;color: #f74108"> Phương pháp giảng dạy lập trình hiệu quả</p>
          <p style="font-family: lato-regular; font-style:italic; font-size: 20px; ">
            Lập trình là một món ăn khô khan, nhưng chúng tôi biết cách biến nó thành món ăn ngon miệng cho bạn. Truyền cảm hứng cho học viên là những gì chúng tôi làm được tốt nhất.
          </p>
        </div>
        <div class="col-md-4">
           <p style="font-weight: bold; font-size: 16px;color: #f74108"> Giảng viên là những người có kinh nghiệm thực tế</p>
          <p style="font-family: lato-regular; font-style:italic; font-size: 20px; " >
            100% giảng viên tại Cybersoft đều đáp ứng 02 tiêu chí sau: Kinh nghiệm thực tế tối thiểu 03 năm và đam mê giảng dạy. Những giảng viên không đạt yêu cầu sẽ bị loại bỏ ngay. </p>
        
        </div>
        <div class="col-md-4">
           <p style="font-weight: bold; font-size: 16px;color: #f74108"> Học phí thấp nhất thị trường</p>
          <p style="font-family: lato-regular; font-style:italic; font-size: 20px; ">
            Bạn đừng ngạc nhiên, Trung Tâm Cybersoft ra đời dựa trên đam mê lập trình, được đứng lớp và truyền cảm hứng cho học viên là niềm vinh hạnh của chúng tôi. Và đặc biệt, Khoa Phạm không hợp tác với bất kì một bên thứ hai nào, do đó: "100% học phí đều dùng cho việc tăng hiệu quả học tập của các bạn học viên".
          </p>
        </div>
      </div>

    </div>
  </div>

  
</div>

<!-- Tai sao-->

<!-- chuong tring dao tao-->
<div class="ctdaotao text-center" style="margin-top:20px; margin-bottom: 50px; ">
  <div class="tieudegiaovien" style="margin-top: 15px;margin-bottom:15px; ">
      <h3 style="text-transform: uppercase; font-weight: bold; color: orange;"> chương trình đào tạo đa dạng</h3>
      <img src="Image/line3.JPG">
  </div>
<div class="container">
  <div class="row">
    <div class="panel-group" id="accordion">
    <div  id ="1"class="col-md-4">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <h3>Lập trình web</h3>
        </h4>
      </div>
      <div>
        <div class="thumbnail ">
                <img src="Image/web.jpg"  width="100%">
                <button type="button" class=" btn btn-default" style=" margin-left: -220px; "><a href="LapTrinhWeb.jsp">Chi tiết khóa học</a></button>
         </div>
      </div>
    </div>
    </div>
       <div id="2" class="col-md-4">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <h3>Tin học văn phòng</h3>
        </h4>
      </div>
      <div>
        <div class="thumbnail ">
                      <img src="Image/thvp.jpg" width="100%">
                      <button type="button" class=" btn btn-default" style=" margin-left: -220px;"><a href="TinHocVanPhong.jsp"> Chi tiết khóa học </a></button>
         </div>
      </div>
           </div>
    </div>
       <div id="3" class="col-md-4">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <h3>Lập trình căn bản</h3>
        </h4>
      </div>
      <div>
        <div class="thumbnail ">
                        <img src="Image/basic.jpg"  width="100%">
                        <button type="button" class=" btn btn-default" style=" margin-left: -220px;"><a href="#">Chi tiết khóa học</a></button>
         </div>
      </div>
           </div>
    </div>
  </div>
  </div>

  <div class="row">

    <div class="panel-group" id="accordion">
    <div  id ="4"class="col-md-4">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <h3>Lập trình di động</h3>
        </h4>
      </div>
      <div>
        <div class="thumbnail ">
                <img src="Image/mobile.png"  width="100%">
                <button type="button" class=" btn btn-default" style=" margin-left: -220px; "><a href="#">Chi tiết khóa học</a></button>
         </div>
      </div>
    </div>
    </div>
       <div id="5" class="col-md-4">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <h3>Lập trình Fontend</h3>
        </h4>
      </div>
      <div>
        <div class="thumbnail ">
                      <img src="Image/fend.png" width="100%">
                      <button type="button" class=" btn btn-default" style=" margin-left: -220px;"><a href="#"> Chi tiết khóa học </a></button>
         </div>
      </div>
           </div>
    </div>
       <div id="6" class="col-md-4">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <h3> Mạng máy tính</h3>
        </h4>
      </div>
      <div>
        <div class="thumbnail ">
                        <img src="Image/network.jpg"  width="100%">
                        <button type="button" class=" btn btn-default" style=" margin-left: -220px;"><a href="#">Chi tiết khóa học</a></button>
         </div>
      </div>
           </div>
    </div>
  </div>
  </div>
    
  </div>
</div>



<!-- chuong tring dao tao-->

<!-- Giao viên-->
<div class="giaovien text-center" style=" margin-top: 30px;">

  <div class="tieudegiaovien" style="margin-top: 15px;margin-bottom:15px; ">
      <h3 style="text-transform: uppercase; font-weight: bold; color: orange;"> đội ngũ giảng viên dày dặn kinh nghiệm</h3>
      <img src="Image/line3.JPG">

  </div>

  <div class="container " style="margin-top: 30px">
    <div class="row">
    <div class="col-sm-3">
      
      <img src="Image/gv1.jpg" class="img-responsive img-circle"  alt="Image">
      <p style="font-weight: bold">Giảng viên : Phạm Thị Nhung </p>
      <p>Bộ môn: Lập trình WEB  </p>
      <p>Gần 7 năm tham gia giảng dạy tại trung tâm với các môn lập trình web Java, .NET . Tham gia nhiều dự án phần mềm, website của các công ty , doanh nghiệp.</p>
      <p>Phương pháp dạy: luôn đảm bảo học viên được trang bị tốt các kiến thức và phong cách lập trình chuyên nghiệp</p>

    </div>

     <div class="col-sm-3">
      <img src="Image/gv2.jpg" class="img-responsive img-circle"  alt="Image">
      <p style="font-weight: bold">Giảng viên : Trần Thị Hoàng Anh </p>
      <p>Bộ môn: Tin học Văn Phòng  </p>
      <p> Hơn 10 năm giảng dạy tại các trường đại học, cao đẳng và tại trung tâm</p>
      <p>Phương pháp dạy: Nhiệt tình , tân tụy với học viên, giúp học viên nắm chắc nền tảng, từ đó áp dụng vào thực tế.</p>
      
    </div>

     <div class="col-sm-3">
      <img src="Image/gv3.jpg" class="img-responsive img-circle"  alt="Image">
      <p style="font-weight: bold">Giảng viên : Trần Minh Anh </p>
      <p>Bộ môn: Lập trình Fontend  </p>
      <p> Tốt nghiệp loại ưu tại FPT Arena. Với 8 năm kinh nghiệm giảng dạy, anh đã có hàng nghìn học viên đã tốt nghiệp và làm việc trong lĩnh vực thiết kế, đặc biệt là thiết kế web chuyên nghiệp. Ngoài ra anh còn tham gia rất nhiều dự án web cho FPT và các dự án Freelance khác về thiết kế web dựa trên ngôn ngữ lập trình mã nguồn mở, PHP, .NET</p>
      <p>Phương pháp dạy: Nhiệt tình thân thiện, luôn giải đáp các thắc mắc của học viên</p>
      
    </div>

    <div class="col-sm-3">
      <img src="Image/gv4.jpg" class="img-responsive img-circle"  alt="Image">
      <p style="font-weight: bold">Giảng viên : Nguyễn Thái Vũ </p>
      <p>Bộ môn: Cơ sở dữ liệu </p>
      <p> Hơn 10 năm giảng dạy tại các trường đại học, cao đẳng và tại trung tâm về các chuyên đề SQL Server , MySQL, Oracle</p>
      <p>Phương pháp dạy: Nhiệt tình , tân tụy với học viên, giúp học viên nắm chắc nền tảng. Tập trung vào thực hành chuyên sâu, giúp học viên nắm vững các kỹ năng làm việc thực tế.</p>
      
    </div>
  </div>

  <div class="row">
     <div class="col-sm-3">
      <img src="Image/gv5.jpg" class="img-responsive img-circle"  alt="Image">
      <p style="font-weight: bold">Giảng viên : Nguyễn Đức Việt  </p>
      <p>Bộ môn: Thiết kế đồ họa </p>
      <p> Nhiều năm giảng dạy tại các trường đại học, cao đẳng và tại trung tâm về thiết kế đồ họa bằng Photoshop, Illustrator</p>
      <p>Phương pháp dạy: Nhiệt tình , tân tụy với học viên, giúp học viên nắm chắc nền tảng. Tập trung vào thực hành chuyên sâu, giúp học viên nắm vững các kỹ năng làm việc thực tế.</p>
      
    </div>

     <div class="col-sm-3">
      <img src="Image/gv6.jpg" class="img-responsive img-circle"  alt="Image">
      <p style="font-weight: bold">Giảng viên : Trần Quang Minh  </p>
      <p>Bộ môn: Lập trình đi động </p>
      <p> Nhiều năm kinh nghiệm giảng dạy , và làm việc các dự án lớn về Android , IOS. </p>
      <p>Phương pháp dạy: Nhiệt tình , tân tụy với học viên, giúp học viên nắm chắc nền tảng. Luôn khuyến khích sinh viên tìm hiểu các kiến thức mới, công nghệ mới, đặc biệt là công nghệ của công ty, doanh nghiệp đang sử dụng để đáp ứng được nhu cầu khi đi xin việc.</p>
      
    </div>

     <div class="col-sm-3">
      <img src="Image/gv7.jpg" class="img-responsive img-circle"  alt="Image">
      <p style="font-weight: bold">Giảng viên : Lê Thị Kim  </p>
      <p>Bộ môn: Lập trình căn bản </p>
      <p> Nhiều năm kinh nghiệm giảng dạy , và làm việc với cac ngôn ngữ lập trình C, C++, Java,  </p>
      <p>Phương pháp dạy: Nhiệt tình , tân tụy với học viên, tạo mọi điều kiện để sinh viên phát huy hết tìm năng của mình .</p>
      
    </div>

    <div class="col-sm-3">
      <img src="Image/gv8.jpg" class="img-responsive img-circle"  alt="Image">
      <p style="font-weight: bold">Giảng viên : Trần Quang Minh  </p>
      <p>Bộ môn: Lập trình đi động </p>
      <p> Nhiều năm kinh nghiệm giảng dạy các môn Quản trị hệ thống mạng, An ninh mạng, nhiều năm làm việc thực tế với các dự án nổi bật </p>
      <p>Phương pháp dạy: Nhiệt tình , tân tụy với học viên, giúp học viên nắm chắc nền tảng. Luôn khuyến khích sinh viên tìm hiểu các kiến thức mới.</p>
    </div>
    
  </div>
  <img src="Image/giaovien.JPG" style="width: 100%;">

  </div>


  
</div>

<!-- giao vien-->

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


</body>
</html>
