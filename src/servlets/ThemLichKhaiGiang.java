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

@WebServlet("/ThemLichKhaiGiang")
public class ThemLichKhaiGiang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThemLichKhaiGiang() {
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
		request.getRequestDispatcher("admin/ThemLopHoc.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String malop = request.getParameter("malop");
		String ctdt = request.getParameter("ctdt");
		String thoigian = request.getParameter("thoigian");
		String lichkhaigiang = request.getParameter("lichkhaigiang");
		String phonghoc = request.getParameter("phonghoc");
		String thoigianhoc = request.getParameter("thoigianhoc");
		
		Connection connec = null;
		try {
			String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
			String username = "HQTCSDL";
			String password = "hieu123";
			String query = "INSERT INTO dbo.LichKhaiGiang( MaLop , TenKhoaHoc , ThoiGian , LichKhaiGiang , PhongHoc , ThoiGianHoc ) VALUES(?, ?, ?, ?, ?, ?)";
			connec = DriverManager.getConnection(url, username, password);
			PreparedStatement ppst = connec.prepareStatement(query);
			ppst.setString(1,malop);
			ppst.setString(2,ctdt);
			ppst.setString(3,thoigian);
			ppst.setString(4,lichkhaigiang);
			ppst.setString(5,phonghoc);
			ppst.setString(6,thoigianhoc);
			ppst.executeUpdate();
			response.sendRedirect("DSLichKhaiGiang");
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
