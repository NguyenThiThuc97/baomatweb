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

@WebServlet("/ThemCCDT")
public class ThemCCDT extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ThemCCDT() {
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
		request.getRequestDispatcher("admin/ThemCCDT.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String maccdt = request.getParameter("maccdt");
		String tenccdt = request.getParameter("tenccdt");
		String hocphi = request.getParameter("hocphi");
		
		Connection connec = null;
		try {
			String st=maccdt + tenccdt + hocphi;
			boolean kt =XSS.XSSkt(st);
			if(kt==true && TranBoDem.TBD50(maccdt)==true && TranBoDem.TBD50(tenccdt)==true && TranBoDem.TBD10(hocphi)==true)
			{
			String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
			String username = "HQTCSDL";
			String password = "hieu123";
			String query = "INSERT INTO dbo.ChuongTrinhDaoTao( MaCTDT, TenCTDT, HocPhi ) VALUES(?, ?, ?)";
			connec = DriverManager.getConnection(url, username, password);
			PreparedStatement ppst = connec.prepareStatement(query);
			ppst.setString(1,maccdt);
			ppst.setString(2,tenccdt);
			ppst.setString(3,hocphi);
			ppst.executeUpdate();
			response.sendRedirect("CCDT");
			}
			else
			{
				response.sendRedirect("ThemCCDT");
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
