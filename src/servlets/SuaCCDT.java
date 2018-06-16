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

import models.CTDTEntry;

@WebServlet("/SuaCCDT")
public class SuaCCDT extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   
	String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH";
	String username = "HQTCSDL";
	String password = "hieu123";  
    public SuaCCDT() {
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
		String maccdt = request.getParameter("id").toString();
		List<CTDTEntry> LAYCTDT = new ArrayList<CTDTEntry>();
		Connection connec = null ;
		try {
			
			//Statement state = connec.createStatement();
			String query = "SELECT * FROM dbo.ChuongTrinhDaoTao WHERE MaCTDT= ? ";
			connec = DriverManager.getConnection(url, username, password);
			//update
			PreparedStatement ps = connec.prepareStatement(query);
			ps.setString(1, maccdt);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				CTDTEntry entry = new CTDTEntry(rs.getString(1), rs.getString(2), rs.getString(3));
				LAYCTDT.add(entry);
			}
			request.setAttribute("LAYCTDT", LAYCTDT);
			request.getRequestDispatcher("admin/SuaCCDT.jsp").forward(request, response);
			
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
		String maccdt = request.getParameter("maccdt");
		String tenccdt = request.getParameter("tenccdt");
		String hocphi = request.getParameter("hocphi");
		
		Connection connec = null;
		try {
			
			
			
			String st=maccdt+tenccdt+hocphi;
			boolean kt = XSS.XSSkt(st);
			if(kt==true && TranBoDem.TBD50(maccdt)==true && TranBoDem.TBD50(tenccdt)==true && TranBoDem.TBD10(hocphi)==true)
			{
			
			String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
			String username = "HQTCSDL";
			String password = "hieu123";
			String query = "UPDATE dbo.ChuongTrinhDaoTao SET TenCTDT = ?, HocPhi=? WHERE MaCTDT=?";
			connec = DriverManager.getConnection(url, username, password);
			PreparedStatement ppst = connec.prepareStatement(query);
			ppst.setString(1,tenccdt);
			ppst.setString(2,hocphi);
			ppst.setString(3, maccdt);
			ppst.executeUpdate();
			response.sendRedirect("CCDT");
			}
			
			else
			{
				response.sendRedirect("SuaCCDT?id="+maccdt);
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
