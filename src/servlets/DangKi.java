package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DangKi")
public class DangKi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DangKi() {
        super();
    }
    public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		try 
		{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		}
		catch(ClassNotFoundException e)
		{
			throw new ServletException(e);
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/DangKi.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String sdt = request.getParameter("sdt");
		String name = request.getParameter("name");
		String diachi = request.getParameter("diachi");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String nghenghiep = request.getParameter("nghenghiep");
		String password2 = request.getParameter("password2");
		String message="";
		String page="";
		Connection connec = null;
		try {
			String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
			String username = "HQTCSDL";
			String passwordsql = "hieu123";
			String query = "INSERT INTO dbo.TaiKhoan ( TenDangNhap , MatKhau , HoTen , SDT , DiaChi , NgheNghiep, QuyenHan ) VALUES(?, ?, ?, ?, ?, ?, ?)";
			connec = DriverManager.getConnection(url, username, passwordsql);
			PreparedStatement ppst = connec.prepareStatement(query);
			if(password.equals(password2))
			{
				ppst.setString(1,email);
				ppst.setString(2,password);
				ppst.setString(3,name);
				ppst.setString(4,sdt);
				ppst.setString(5,diachi);
				ppst.setString(6,nghenghiep);
				ppst.setString(7, "User");
				ppst.executeUpdate();
				message = "Tạo tài khoản thành công";
				page="Home.jsp";
			}
			else
			{
				message ="mật khẩu bạn nhập lại không đúng";
				page="WEB-INF/DangKi.jsp";
			}
			request.setAttribute("ThongBao", message);	
			request.getRequestDispatcher(page).forward(request, response);
		}
		
		catch (SQLException e) {
			throw new ServletException(e);
		}
		finally
		{
			try {
				if(connec != null)
					connec.close();
			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
	}

}
