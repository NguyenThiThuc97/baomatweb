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
    <div class="slide" style="margin-top: -20px;">
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="Image/ltweb1.JPG" alt="Chania" width="1800" >
        
      </div>

      <div class="item">
        <img src="Image/ltweb2.JPG" alt="Chania" width="1800" >
       
      </div>
    
      <div class="item">
        <img src="Image/ltweb3.JPG" alt="Flower" width="1700" >
        
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
              <img src="Image/logoweb.JPG">
      </div>
<!---->
<!---->
      <div class="col-md-8" style=" padding-left: 50px;
    padding-right: 5px;">
        <h1 style="text-align: center;text-transform: uppercase;font-size: 20px;color: #0082c8;font-weight: bold;line-height: 20px;"> Lập trình Web </h1>

         <!---->

        <div class="content"  style="margin-left: 20px;">
          
          <ul>
            <li>
              Chương trình được tổ chức và giảng dạy theo tiêu chí "HỌC THỰC - LÀM THỰC" từ cơ bản đến nâng cao liên tục các ngày trong tuần, giúp trang bị cho học viên những kiến thức và kỹ năng cần thiết cho công việc sau này.
            <li>
              Lập trình viên Web chuyên nghiệp (12 tháng) do chính trường ĐH Khoa Học Tự Nhiên chứng nhận, là cam kết chất lượng của chương trình với HV sau thời gian khảo sát, nghiên cừu thực tế của Trung Tâm Tin Học.
            </li>
            
            

          </ul>
        </div>
        <!---->

       

      </div>

      <!---->
 
    </div>
    <!---->

    
  </div>
            
        
<div>
<!-- nhan duoc j sau khoa hoc-->
<div class="nhanduocgi" style="margin-top: 20px;">
    <div class="container">
        <h4 style="text-transform: uppercase;color: #f78f20; font-weight: bold; margin-bottom: 40px;"> bạn nhận được gì sau khóa học  </h4>
         <img src="Image/line4.JPG" style="margin-top: -30px;">
         <div class="noidungnhanduoc">
            <strong> Sau khi hoàn thành khóa học, bạn sẻ có khả năng:</strong>
              <ul>
                <li>
                 Ứng tuyển và làm việc tại các công ty phần mềm trong và ngoài nước ở các vị trí Lập trình viên Front-end, Lập trình viên Back-end, Lập trình viên Full-stack với những công việc như thiết kế website; xây dựng và phát triền, nâng cấp và bảo trì các website Java, PHP
                </li>
                <li>
                  Vận dụng những kiến thức và kỹ năng đã học để thiết kế, xây dựng website thương mại điện tử cho cá nhản để kinh doanh, quảng cảo, tăng thêm thu nhập
                </li>
             

              </ul>
            </div>
          </div>
        
    </div>
    
</div>
<!-- nhan duoc j sau khoa hoc-->

<!-- khoan dau tu-->
<div class="dautu">
    <div class="container">
        <h4 style="text-transform: uppercase;color: #f78f20; font-weight: bold; margin-bottom: 40px;"> KHOẢN ĐÀU TƯ DÀNH CHO KHÓA HỌC:  </h4>
         <img src="Image/line4.JPG" style="margin-top: -30px;">


        <div class="noidungdautu">


         <ul>
            <li>
                Thời gian học: 12 tháng liên tục
            </li>
            <li>
                Học trực tiếp trong phòng máy
            </li>
            <li>
                Học phí: 27.000.000 VND (Học phí: 9.000.000 vnđ/HK)
            </li>
            <li>
                Đặc biệt: Có chính sách ưu đãi học phí lên đến 40% khi phỏng vấn.
            </li>
         </ul>
     </div>
        
    </div>
</div>

<!-- khoan dau tu-->


<!-- hoc duoc j-->
<div class="hocduocgi">
    <div class="container">
        <h4 style="text-transform: uppercase;color: #f78f20; font-weight: bold; margin-bottom: 40px;"> BẠN SỀ HỌC NHỮNG GÌ ?  </h4>
         <img src="Image/line4.JPG" style="margin-top: -30px;">
         <div class="noidunghocduoc">
            <strong> Học kỳ I: Lập trình Front-end (4 tháng)</strong>
            <ul>
                <li>
                    Tin học vàn phòng
                </li>
                <li>
                    Anh văn giao tiếp
                </li>
                <li>
                    Lập trình Web HTML5, CSS3, JQuery, Bootstrap (HTML & css, HTML5 & CSS3, JavaScript & JQuery, xây dựng Layout cho website, ừng dụng Boostrap Framework để tạo các trang web hỗ trợ responsive, tạo trang web OnePage, Portiíolio, hiệu chỉnh layout có sẵn sang layout responsive)
                </li>
                <li>
                    Xây dựng Single Page Applications với Angular 2 (Sử dụng các thư viện được cung cấp trong Angular 2, áp dụng mô hình MVC của Angular 2 để xây dựng Single Page Applications, lập trình theo hướng đối tượng sử dụng TypeScript trong Angular 2)
                </li>
            </ul>
            <strong>Học kỳ II: Lập trình viên PHP (3,5 tháng)</strong>
            <ul>
                <li>
                        Anh văn chuyên ngành
                </li>
                <li>
                        PHP cơ bản (Lập trình HĐT, xây dựng ứng dụng Web đơn giản, sử dụng Web Services)
                </li>
                <li>
                        Kỹ thuật lập trình PHP (Lập trình HĐT nâng cao, kết hợp PHP & JavaScript, XML, tích hợp mã, hoàn chỉnh ứng dụng Web và upload website lên Internet)
                </li>
                <li>
                        Lập trình ứng dụng Web với PHP và MySQL (Quản trị cơ sở dữ liệu MySQL, PHP & MySQL, PDO, Smarty Template, Emaỉl, xây dựng Web Services)
                </li>
                <li>
                        Xây dựng hoàn chỉnh website (Xây dựng Web theo mô hình MVC, sử dụng những công nghệ tiên tiến như Ajax, Jquery, JSON, SEO...)
                </li>
                
            </ul>

            <strong>Học kỳ III: Lập trình viẽn Java (4,5 tháng)</strong>
            <ul>
                <li>
                        Làm quen với ngôn ngữ lập trình Java
                </li>
                <li>
                        Java cơ bản(Lập trình HĐT, xây dựng ứng dụng J2SE đơn giản, sử dụng Web Services)
                </li>
                <li>
                        Kỹ thuật lập trình Java (Lập trình HĐT nâng cao, làm việc với XML DOM, CSDL MySQL /Oracle, bảo mật, Design Patterns khi xây dựng ứng dụng)
                </li>
                <li>    Lập trình Web với Java(Xây dựng web J2EE theo mô hình MVC, xây dựng Web Services, bảo mật ứng dụng Web, hoàn chỉnh ứng dụng)
                </li>
                <li>
                        Công nghệ xây dựng ứng dụng Web trong Java(Sử dụng công nghệ EJB, mồ hỉnh Spring MVC, Hibernate, triển khai webslte lên các ứng dụng server như Tomcat EJB, Glassíish và Jboss...)
                </li>
                <li>
                        Đồ án tốt nghiệp
                </li>
            </ul>


         </div>

    </div>
</div>
<!-- hoc duoc j-->
<div class="bangcap" style="margin-bottom: 30px;">
    <div class="container">
        <h4 style="text-transform: uppercase;color: #f78f20; font-weight: bold; margin-bottom: 40px;"> bằng cấp chứng chỉ  </h4>
         <img src="Image/line4.JPG" style="margin-top: -30px;">
         <div class="noidunghocduoc">
            <ul>
                <li>
                        Sau khi kết thúc khóa học, học viên sẽ được cấp chứng chỉ<b> “Lặp trình viên Web chuyên nghiệp”</b> do Trung tâm tin học CyberSoft cấp.
                </li>
            </ul>
         </div>
    </div>
</div>
<!---->

<!-- học viên-->
<div class="hocvien text-center" style="margin-top: 30px; margin-bottom: 15px;">
  <div class="container">

    <div class="tieudehocvien" style="margin-top: 15px;margin-bottom:15px; ">
      <h3 style="text-transform: uppercase; font-weight: bold; color: orange; margin-bottom: 40px;"> cảm nhận học viên </h3>
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
<div class="footer" style="background-color: #49b9ec; margin-top: 30px;">
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