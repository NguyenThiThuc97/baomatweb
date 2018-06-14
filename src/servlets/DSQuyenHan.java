package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.TaiKhoanQuyenHan;

@WebServlet("/DSQuyenHan")
public class DSQuyenHan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=MAYTINH-E0OC46K;DatabaseName=TTTH";
	String username = "HQTCSDL";
	String password = "hieu123";
    public DSQuyenHan() {
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
		List<TaiKhoanQuyenHan> quyenhan = new ArrayList<TaiKhoanQuyenHan>();
		Connection connec = null ;
		try {
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT TenDangNhap, QuyenHan FROM dbo.TaiKhoan";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				TaiKhoanQuyenHan entry = new TaiKhoanQuyenHan(rs.getString(1), rs.getString(2));
				quyenhan.add(entry);
			}
			request.setAttribute("quyenhan", quyenhan);
			request.getRequestDispatcher("admin/ThayDoiQuyenHan.jsp").forward(request, response);
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
