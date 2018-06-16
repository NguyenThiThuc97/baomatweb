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

import models.DangNhapEntry;

@WebServlet("/XemDanhSachHocVienTheoLop")
public class XemDanhSachHocVienTheoLop extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH";
	String username = "HQTCSDL";
	String password = "hieu123";    
    public XemDanhSachHocVienTheoLop() {
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
		request.getRequestDispatcher("admin/XemDanhSachHocVienTheoLop.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<DangNhapEntry> DSLOP = new ArrayList<DangNhapEntry>();
		String malop = request.getParameter("malop");
		boolean kt =XSS.XSSkttk(malop);
		try {
			if(kt==true  && TranBoDem.TBD50(malop)==true)
			{
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "EXECUTE dbo.DanhSachHocVienTheoLop @MaLop = ?";
			
			//update
			
			PreparedStatement ps = connec.prepareStatement(query);
			ps.setString(1, malop);
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				DangNhapEntry entry = new DangNhapEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				DSLOP.add(entry);
			}
			}
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("DSLOP", DSLOP);
		request.getRequestDispatcher("admin/XemDanhSachHocVienTheoLop.jsp").forward(request, response);
	}

}
