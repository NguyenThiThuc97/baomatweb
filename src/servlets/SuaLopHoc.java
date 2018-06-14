package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.LichKhaiGiangEntry;

@WebServlet("/SuaLopHoc")
public class SuaLopHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=MAYTINH-E0OC46K;DatabaseName=TTTH";
	String username = "HQTCSDL";
	String password = "hieu123";  
    public SuaLopHoc() {
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
		String malop = request.getParameter("id").toString();
		List<LichKhaiGiangEntry> LayLop = new ArrayList<LichKhaiGiangEntry>();
		Connection connec = null ;
		try {
			
			//Statement state = connec.createStatement();
			String query = "SELECT * FROM dbo.LichKhaiGiang WHERE MaLop=? ;";
			connec = DriverManager.getConnection(url, username, password);
			PreparedStatement ps = connec.prepareStatement(query);
			ps.setString(1, malop);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				LichKhaiGiangEntry entry = new LichKhaiGiangEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				LayLop.add(entry);
			}
			request.setAttribute("LayLop", LayLop);
			request.getRequestDispatcher("admin/SuaLopHoc.jsp").forward(request, response);
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
			//response.sendRedirect("DSLichKhaiGiang");
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String malop = request.getParameter("malop");
		String ctdt = request.getParameter("ctdt");
		String thoigian = request.getParameter("thoigian");
		String ngaykhaigiang = request.getParameter("ngaykhaigiang");
		String phonghoc = request.getParameter("phonghoc");
		String thoigianhoc = request.getParameter("thoigianhoc");
		
		Connection connec = null;
		try {
			String url = "jdbc:sqlserver://localhost:1433;instance=MAYTINH-E0OC46K;DatabaseName=TTTH;";
			String username = "HQTCSDL";
			String password = "hieu123";
			String query = "UPDATE dbo.LichKhaiGiang SET TenKhoaHoc =?, ThoiGian=?, LichKhaiGiang=?, PhongHoc=?, ThoiGianHoc=? WHERE MaLop=?";
			connec = DriverManager.getConnection(url, username, password);
			PreparedStatement ppst = connec.prepareStatement(query);
			ppst.setString(1,ctdt);
			ppst.setString(2,thoigian);
			ppst.setString(3,ngaykhaigiang);
			ppst.setString(4,phonghoc);
			ppst.setString(5,thoigianhoc);
			ppst.setString(6,malop);
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
