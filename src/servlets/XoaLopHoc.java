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


@WebServlet("/XoaLopHoc")
public class XoaLopHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public XoaLopHoc() {
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
		String url = "jdbc:sqlserver://localhost:1433;instance=MAYTINH-E0OC46K;DatabaseName=TTTH";
		String username = "HQTCSDL";
		String password = "hieu123";
		String malop = request.getParameter("id").toString();
		Connection connec = null ;
		try {
			connec = DriverManager.getConnection(url, username, password);
			String query = "DELETE dbo.LichKhaiGiang WHERE MaLop=?";
			PreparedStatement ppst = connec.prepareStatement(query);
			ppst.setString(1,malop);
			ppst.executeUpdate();
			response.sendRedirect("DSLichKhaiGiang");
			
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
