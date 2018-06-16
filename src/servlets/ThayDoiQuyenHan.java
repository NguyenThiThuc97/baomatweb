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

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.TaiKhoanQuyenHan;

@WebServlet("/ThayDoiQuyenHan")
public class ThayDoiQuyenHan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=MAYTINH-E0OC46K;DatabaseName=TTTH";
	String username = "HQTCSDL";
	String password = "hieu123";
    public ThayDoiQuyenHan() {
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
		String tendangnhap = request.getParameter("id").toString();
		List<TaiKhoanQuyenHan> layTK = new ArrayList<TaiKhoanQuyenHan>();
		Connection connec = null ;
		try {
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT TenDangNhap, QuyenHan FROM dbo.TaiKhoan WHERE TenDangNhap= ?";

			//update
			PreparedStatement ps = connec.prepareStatement(query);
			ps.setString(1, tendangnhap);
			
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				TaiKhoanQuyenHan entry = new TaiKhoanQuyenHan(rs.getString(1), rs.getString(2));
				layTK.add(entry);
			}
			request.setAttribute("layTK", layTK);
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String tendangnhap = request.getParameter("tendangnhap");
		String quyenhan = request.getParameter("quyenhan");
		String st=tendangnhap+quyenhan;
		boolean kt = XSS.XSSkttk(st);
		Connection connec = null;
		try {
			if(kt==true && TranBoDem.TBD50(tendangnhap)==true && TranBoDem.TBD50(quyenhan)==true)
			{
			String url = "jdbc:sqlserver://localhost:1433;instance=MAYTINH-E0OC46K;DatabaseName=TTTH;";
			String username = "HQTCSDL";
			String password = "hieu123";
			String query = "UPDATE dbo.TaiKhoan SET QuyenHan =? WHERE TenDangNhap=?";
			connec = DriverManager.getConnection(url, username, password);
			PreparedStatement ppst = connec.prepareStatement(query);
			ppst.setString(1,quyenhan);
			ppst.setString(2,tendangnhap);
			ppst.executeUpdate();
			response.sendRedirect("DSQuyenHan");
			}
			else
			{
				response.sendRedirect("DSQuyenHan");
			}
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
