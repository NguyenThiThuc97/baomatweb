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
	
import models.CacKhoaHocCuaToiEntry;

@WebServlet("/CacKhoaHocCuaToi")
public class CacKhoaHocCuaToi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH";
	String usernamesql = "HQTCSDL";
	String password = "hieu123";    
    public CacKhoaHocCuaToi() {
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		ArrayList<CacKhoaHocCuaToiEntry> DSKHOAHOC = new ArrayList<CacKhoaHocCuaToiEntry>();
		ArrayList<CacKhoaHocCuaToiEntry> DSKHOAHOC1 = new ArrayList<CacKhoaHocCuaToiEntry>();
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("user");
		try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, usernamesql, password);
			Statement state = connec.createStatement();
			String query = "EXECUTE dbo.CacKhoaHocCuaToi @TenDangNhap = ?";
			
			//sửa
			PreparedStatement ps = connec.prepareStatement(query);
			ps.setString(1, username);
			
			
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				CacKhoaHocCuaToiEntry entry = new CacKhoaHocCuaToiEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
				CacKhoaHocCuaToiEntry entry1 = new CacKhoaHocCuaToiEntry(rs.getString(1));
				DSKHOAHOC1.add(entry1);
				DSKHOAHOC.add(entry);
			}
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("DS", DSKHOAHOC1);
		request.setAttribute("DSKHOAHOC", DSKHOAHOC);
		request.getRequestDispatcher("user/CacKhoaHocCuaToi.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
