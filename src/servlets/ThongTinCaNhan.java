package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.ThongTinCaNhanEntry;;

@WebServlet("/ThongTinCaNhan")
public class ThongTinCaNhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH";
	String usernamesql = "HQTCSDL";
	String password = "hieu123";    
    public ThongTinCaNhan() {
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
		ArrayList<ThongTinCaNhanEntry> ThongTin = new ArrayList<ThongTinCaNhanEntry>();
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("user");
		try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, usernamesql, password);
			Statement state = connec.createStatement();
			String query = "EXEC dbo.ThongTin @TenDangNhap = ?";
			
			//update
			PreparedStatement ps = connec.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				ThongTinCaNhanEntry entry = new ThongTinCaNhanEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
				ThongTin.add(entry);
			}
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("ThongTin", ThongTin);
		request.getRequestDispatcher("user/ThongTinCaNhan.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String hoten = request.getParameter("hoten");
		String sdt = request.getParameter("sdt");
		String diachi = request.getParameter("diachi");
		String nghenghiep = request.getParameter("nghenghiep");
		HttpSession session = request.getSession();
		String username = session.getAttribute("user").toString();
		Connection connec = null;
		String st=hoten + sdt + diachi + nghenghiep;
		boolean kt= XSS.XSSkt(st);
		if(kt==true  && TranBoDem.TBD50(hoten)==true  && TranBoDem.TBD50(sdt)==true  && TranBoDem.TBD100(diachi)==true 
				 && TranBoDem.TBD50(nghenghiep)==true && TranBoDem.TBD50(username)==true)
		{
		try {
			String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
			String usernamesql = "HQTCSDL";
			String password = "hieu123";
			String query = "UPDATE dbo.TaiKhoan SET HoTen = ?, SDT= ?, DiaChi= ?, NgheNghiep =? WHERE TenDangNhap=N'"+username+"'";
			connec = DriverManager.getConnection(url, usernamesql, password);
			PreparedStatement ppst = connec.prepareStatement(query);
			ppst.setString(1,hoten);
			ppst.setString(2,sdt);
			ppst.setString(3,diachi);
			ppst.setString(4, nghenghiep);
			ppst.executeUpdate();
			response.sendRedirect("ThongTinCaNhan");
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
		else
		{
			session.setAttribute("thongbao","Thay đổi thông tin tài khoản không thành công!!!");
			response.sendRedirect("ThongTinCaNhan");
		}
		
	}

}
