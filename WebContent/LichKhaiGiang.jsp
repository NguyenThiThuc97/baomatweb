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
  <link rel="stylesheet" style="text/css" href="css/style.css">
  <link rel="stylesheet" style="text/css" href="css/DangKi.css">
    <title>Lịch khai giảng</title>
<script>
function myFunction2(malop) {
       document.getElementById("malop").value = malop;
         }
function myFunction() {
            alert("Bạn vừa thêm một lớp học thành công!");
        }

 </script>
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
        <li class="active"><a href="LichKhaiGiang">Lịch khai giảng</a></li>
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
    <h1 ><p style="color: #cc6506; font-size:36px;text-align: center;">Thông Tin Ưu Đãi Khóa Học</p>
            </h1>
        <h4><p style="color: #cc6506;">********</p></h4>
        <div class="container" >
            <p style="font-size:20px;color:#007f00;">Chính Sách Ưu Đãi Thường Xuyên</p>
            <p>Học viên cũ khi đăng ký học lại các khóa học được giảm <span style="color:blue">50% học phí</span>(tên khóa học và số tiết phải trùng với khóa học cũ)</p>
            <p>Học viên đã học xong các <span style="color:black">lớp quản trị mạng/an ninh mạng/lập trình viên </span>sẽ được giảm 20% học phí khi tiếp tục các khoá học tại trung tâm.</p>
            <p>Học viên đăng ký khóa học nhóm từ<span style="color:blue"> 5 người trở lên được giảm 15% học phí.</span></p>
            <p>Học viên đăng ký từ<span style="color:blue"> 3 khóa học trở lên được giảm 25% học phí.</span></p>

       <p style="font-size:16px;color:#007f00;">ƯU ĐÃI ĐẶC BIỆT.</p>

        <p>Lập trình ANDROID chỉ còn lại<span style="color:blue">  2.500.000đ</span> ( dành cho các học viên đã tham gia khóa học bất kỳ tại trung tâm).</p>
        <p>Tin học văn phòng chỉ còn lại <span style="color:blue"> 2.200.000đ </span>( dành cho các học viên đăng ký học trước ngày khai giảng 11/12/2017).</p>
            <p style="font-size:25px;color:red;"><cite>CHÚ Ý:</cite></p>

        <p>Để nhận được các ưu đãi của trung tâm học viên phải hoàn tất học phí <span style="color:blue"> trước ngày 06/09/2017</span></p>
        <p>Trong trường hợp có nhiều chính sách ưu đãi, áp dụng ưu đãi cao nhất, không cộng dồn.</p>
        <p>Tất cả chính sách khi áp dụng thì phải có giấy tờ chứng thực như: thẻ sinh viên, chứng minh nhân dân, bằng lái xe,...</p>
        <h4 style="color:blue">Học trực tiếp trên máy - một máy/học viên - Học phí đã bao gồm giáo trình, lệ phí thi  và cấp chứng chỉ</h4>
        <h2 style="color:orange;">Lịch khai giảng</h2>
        <div class="text-center" Style="margin-bottom: 15px;">
        <img src="Image/line3.JPG">
        </div>
</div>
</div>
<div class="container">
<div class="row">
  <div class="panel-group" id="accordion">
    <div  id ="1"class="col-md-12" style="margin-bottom: 40px">
    <div class="panel panel-primary ">
      <div class="panel-heading ">
        <h4 class="panel-title">
           <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><h3>Lịch khai giảng các khóa học Lập trình Web</h3></a> 
        </h4>
      </div>
        <h4 style="color:red;">Học phí: 2.000.000đ</h4>
       <h3 style="color:#91a">Sau khi kết thúc khóa học được cấp chứng chỉ Lập trình Web chuyên nghiệp của trung tâm</h3>
      <div id="collapse1" class="panel-collapse collapse in">
        <table class="table table-hover table-striped" >
            <tr>
                <th>Mã lớp học</th><th>Thời gian học</th><th>Ngày khai giảng</th>
                <th>Phòng học</th><th>Thời gian học</th><th>Đăng kí ngay nào</th>
            </tr>
            <c:forEach items="${CCDT1 }" var="a">
                <tr>
                    <td>${a.malop}</td>
                     <td>${a.thoigian}</td>
                    <td>${a.ngaykhaigiang}</td>
                    <td>${a.phonghoc}</td>
                    <td>${a.thoigianhoc}</td>
                    <td><a><button onclick="myFunction2('${a.malop}')" class="btn btn-primary" data-toggle="collapse" data-target="#demo">Đăng kí</button></a>  </td>
                </tr>
            </c:forEach>
            <div id="demo" class="collapse">
             <div class="col-md-offset-5 col-md-3">
            <form action="DangKiLopHoc" method="post">
            <div class="form-login">
            <h4>Đăng kí môn học</h4>
            <input type="text" name="userName" class="form-control input-sm chat-input" placeholder="username" />
            <br>
            <input type="password" name="userPassword" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <input type="text" name="lophoc" id="malop"class="form-control input-sm chat-input" placeholder="Mã lớp học" />
            <br>
            <div class="wrapper">
            <button onclick="myFunction()"  class="btn btn-primary" type="submit">Đăng kí</button>
            </div>
            </div>
            </form>
        
        </div>
        </div>
        </table>  
      </div>
    </div>
    </div>

    <div  id ="1"class="col-md-12" style="margin-bottom: 40px">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapse2"><h3>Lịch khai giảng các lớp Tin học văn phòng</h3></a>
        </h4>
      </div>
      <div style="color:red;">
      <h1>Nếu đăng kí tin học văn phòng ngay bây giờ bạn sẽ được giảm 20% học phí</h1>
       <h3>Học phí: 2.500.000đ</h3>
        <h3 style="color:#91a">Sau khi kết thúc khóa học được cấp chứng chỉ tin học văn phòng chuyên nghiệp của trung tâm</h3>
       </div>
      <div id="collapse2" class="panel-collapse collapse">
        <table class="table table-hover table-striped" >
            <tr>
                <th>Mã lớp học</th><th>Thời gian học</th><th>Ngày khai giảng</th>
                <th>Phòng học</th><th>Thời gian học</th><th>Đăng kí ngay nào</th>
            </tr>
            <c:forEach items="${CCDT2 }" var="b">
                <tr>
                    <td>${b.malop}</td>
                     <td>${b.thoigian}</td>
                    <td>${b.ngaykhaigiang}</td>
                    <td>${b.phonghoc}</td>
                    <td>${b.thoigianhoc}</td>
                       <td><a><button onclick="myFunction2('${a.malop}')" class="btn btn-primary" data-toggle="collapse" data-target="#demo2">Đăng kí</button></a>  </td>
                </tr>
            </c:forEach>
            <div id="demo2" class="collapse">
             <div class="col-md-offset-5 col-md-3">
            <form action="DangKiLopHoc" method="post">
            <div class="form-login">
            <h4>Đăng kí môn học</h4>
            <input type="text" name="userName" class="form-control input-sm chat-input" placeholder="username" />
            <br>
            <input type="password" name="userPassword" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <input type="text" name="lophoc" id="malop" class="form-control input-sm chat-input" placeholder="Mã lớp học" />
            <br>
            <div class="wrapper">
            <button onclick="myFunction()"  class="btn btn-primary" type="submit">Đăng kí</button>
            </div>
            </div>
            </form>
        
        </div>
        </div>

        </table>  
      </div>
    </div>
    </div>
    <div  id ="1"class="col-md-12" style="margin-bottom: 40px">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse3"><h3>Lịch khai giảng các lớp Lập trình android</h3></a>
        </h4>
      </div>
      <h1 style="color:red">Nếu đăng kí online ngay bây giờ bạn sẽ được giảm 20% học phí</h1>
        <h3 style="color:red">Học phí: 3.000.000đ </h3>
        <h3 style="color:#91a">Sau khi kết thúc khóa học bạn có thế viết một phần mềm bằng ngôn ngữ Android</h3>
      <div id="collapse3" class="panel-collapse collapse">
        <table class="table table-hover table-striped" >
            <tr>
                <th>Mã lớp học</th><th>Thời gian học</th><th>Ngày khai giảng</th>
                <th>Phòng học</th><th>Thời gian học</th><th>Đăng kí ngay nào</th>
            </tr>
            <c:forEach items="${CCDT3 }" var="c">
                <tr>
                    <td>${c.malop}</td>
                     <td>${c.thoigian}</td>
                    <td>${c.ngaykhaigiang}</td>
                    <td>${c.phonghoc}</td>
                    <td>${c.thoigianhoc}</td>
                           <td><a><button onclick="myFunction2('${a.malop}')" class="btn btn-primary" data-toggle="collapse" data-target="#demo3">Đăng kí</button></a>  </td>
                </tr>
            </c:forEach>
            <div id="demo3" class="collapse">
             <div class="col-md-offset-5 col-md-3">
            <form action="DangKiLopHoc" method="post">
            <div class="form-login">
            <h4>Đăng kí môn học</h4>
            <input type="text" name="userName" class="form-control input-sm chat-input" placeholder="username" />
            <br>
            <input type="password" name="userPassword" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <input type="text" name="lophoc" id="malop" class="form-control input-sm chat-input" placeholder="Mã lớp học" />
            <br>
            <div class="wrapper">
            <button onclick="myFunction()"  class="btn btn-primary" type="submit">Đăng kí</button>
            </div>
            </div>
            </form>
        
        </div>
        </div>
        </table>  
      </div>
    </div>
    </div>
    <div  id ="1"class="col-md-12" style="margin-bottom: 40px">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
           <a data-toggle="collapse" data-parent="#accordion" href="#collapse4"> <h3>Lịch khai giảng các lớp thiết kế web</h3></a>
        </h4>
      </div>
       <h3 style="color:red">Học phí:2.200.00đ </h3>
       <h3 style="color:#91a">Sau khi kết thúc khóa học được cấp chứng chỉ thiết kế web của trung tâm được BGD&ĐT chứng nhận</h3>
      <div id="collapse4" class="panel-collapse collapse">
        <table class="table table-hover table-striped" >
            <tr>
                <th>Mã lớp học</th><th>Thời gian học</th><th>Ngày khai giảng</th>
                <th>Phòng học</th><th>Thời gian học</th><th>Đăng kí ngay nào</th>
            </tr>
            <c:forEach items="${CCDT4 }" var="d">
                <tr>
                    <td>${d.malop}</td>
                     <td>${d.thoigian}</td>
                    <td>${d.ngaykhaigiang}</td>
                    <td>${d.phonghoc}</td>
                    <td>${d.thoigianhoc}</td>
                         <td><a><button onclick="myFunction2('${a.malop}')" class="btn btn-primary" data-toggle="collapse" data-target="#demo4">Đăng kí</button></a>  </td>
                </tr>
            </c:forEach>
            <div id="demo4" class="collapse">
              <div class="col-md-offset-5 col-md-3">
            <form action="DangKiLopHoc" method="post">
            <div class="form-login">
            <h4>Đăng kí môn học</h4>
            <input type="text" name="userName" class="form-control input-sm chat-input" placeholder="username" />
            <br>
            <input type="password" name="userPassword" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <input type="text" name="lophoc" id="malop" class="form-control input-sm chat-input" placeholder="Mã lớp học" />
            <br>
            <div class="wrapper">
            <button onclick="myFunction()"  class="btn btn-primary" type="submit">Đăng kí</button>
            </div>
            </div>
            </form>
        
        </div>
        </div>

        </table>  
      </div>
    </div>
    </div>

    <div  id ="1"class="col-md-12" style="margin-bottom: 40px">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse5"><h3>Lịch khai giảng các lớp Mạng máy tính</h3></a>
        </h4>
      </div>
        <h3 style="color:red;">Học phí: 1.500.000đ</h3>
        <h3 style="color:#91a">Sau khi kết thúc khóa học được cấp chứng chỉ an ninh mạng của bộ Giáo dục</h3>
      <div id="collapse5" class="panel-collapse collapse">
        <table class="table table-hover table-striped" >
            <tr>
                <th>Mã lớp học</th><th>Thời gian học</th><th>Ngày khai giảng</th>
                <th>Phòng học</th><th>Thời gian học</th><th>Đăng kí ngay nào</th>
            </tr>
            <c:forEach items="${CCDT5}" var="e">
                <tr>
                    <td>${e.malop}</td>
                     <td>${e.thoigian}</td>
                    <td>${e.ngaykhaigiang}</td>
                    <td>${e.phonghoc}</td>
                    <td>${e.thoigianhoc}</td>
                           <td><a><button onclick="myFunction2('${a.malop}')" class="btn btn-primary" data-toggle="collapse" data-target="#demo5">Đăng kí</button></a>  </td>
                </tr>
            </c:forEach>
            <div id="demo5" class="collapse">
               <div class="col-md-offset-5 col-md-3">
            <form action="DangKiLopHoc" method="post">
            <div class="form-login">
            <h4>Đăng kí môn học</h4>
            <input type="text" name="userName" class="form-control input-sm chat-input" placeholder="username" />
            <br>
            <input type="password" name="userPassword" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <input type="text" name="lophoc" class="form-control input-sm chat-input" placeholder="Mã lớp học" />
            <br>
            <div class="wrapper">
            <button onclick="myFunction()"  class="btn btn-primary" type="submit">Đăng kí</button>
  
            </div>
            </div>
            </form>
        
        </div>
        </div>

        </table>  
      </div>
    </div>
    </div>
    <div  id ="1"class="col-md-12" style="margin-bottom: 40px">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6"><h3> Lịch khai giảng các lớp Winform căn bản</h3></a>
        </h4>
      </div>
       <h3 style="color:red;">Nếu bạn muốn thiết kế một phần mềm chạy trên máy tính của bạn thì lớp Winform căn bản này thật sự là một sự lựa chọn hoàn hảo dành cho bạn</h3>
        <h3 style="color:red;">Học phí: 4.500.000đ</h3>
        <h3 style="color:#91a">Sau khi kết thúc khóa học bạn sẽ tự tay viết ra phần mềm cho máy tính của bạn</h3>
      <div id="collapse6" class="panel-collapse collapse">
        <table class="table table-hover table-striped" >
            <tr>
                <th>Mã lớp học</th><th>Thời gian học</th><th>Ngày khai giảng</th>
                <th>Phòng học</th><th>Thời gian học</th><th>Đăng kí ngay nào</th>
            </tr>
            <c:forEach items="${CCDT6 }" var="f">
                <tr>
                    <td>${f.malop}</td>
                     <td>${f.thoigian}</td>
                    <td>${f.ngaykhaigiang}</td>
                    <td>${f.phonghoc}</td>
                    <td>${f.thoigianhoc}</td>
                          <td><a><button onclick="myFunction2('${a.malop}')" class="btn btn-primary" data-toggle="collapse" data-target="#demo6">Đăng kí</button></a>  </td>
                </tr>
            </c:forEach>
            <div id="demo6" class="collapse ">
               <div class="col-md-offset-5 col-md-3">
            <form action="DangKiLopHoc" method="post">
            <div class="form-login">
            <h4>Đăng kí môn học</h4>
            <input type="text" name="userName" class="form-control input-sm chat-input" placeholder="username" />
            <br>
            <input type="password" name="userPassword" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <input type="text" name="lophoc" id="malop" class="form-control input-sm chat-input" placeholder="Mã lớp học" />
            <br>
            <div class="wrapper">
            <button onclick="myFunction()"  class="btn btn-primary" type="submit">Đăng kí</button>
            </div>
            </div>
            </form>
        </div>
        </div>

        </table>  
      </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</body>
</html>