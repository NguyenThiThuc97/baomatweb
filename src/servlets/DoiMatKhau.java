package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DoiMatKhau")
public class DoiMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH";
	String usernamesql = "HQTCSDL";
	String password = "hieu123";  
    public DoiMatKhau() {
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
		request.getRequestDispatcher("user/DoiMatKhau.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String username = session.getAttribute("user").toString();
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("pass2");
		String repass2 = request.getParameter("repass2");
		String message="";
		String page="";
		Connection connec = null;
		try {
			String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
			String usernamesql = "HQTCSDL";
			String passwordsql = "hieu123";
			String query = "SELECT TenDangNhap, MatKhau FROM dbo.TaiKhoan WHERE TenDangNhap LIKE ? ";
			connec = DriverManager.getConnection(url, usernamesql, passwordsql);
			PreparedStatement ps = connec.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				if(rs.getString(1).equals(username) && rs.getString(2).equals(pass) )
				{
					
					if(pass2.equals(repass2))
					{
						try 
						{
							String query2 = "UPDATE dbo.TaiKhoan SET MatKhau= ? WHERE TenDangNhap=?";
							PreparedStatement ppst = connec.prepareStatement(query2);
							ppst.setString(1, pass2);
									//update
							
							ppst.setString(2, username);
							
							ppst.executeUpdate();
							page="WEB-INF/DangNhap.jsp";
						}
						catch (SQLException e) {
							throw new ServletException(e);
						}
						
					}
					else
					{
						message="mật khẩu bạn nhập lại không khớp";
						page="user/DoiMatKhau.jsp";
					}
				}
				else
				{
					message="Mật khẩu cũ bạn nhập không đúng";
					page="user/DoiMatKhau.jsp";
				}
				session.setAttribute("message", message);
				request.getRequestDispatcher(page).forward(request, response);
				}
			}
		 	catch (SQLException e) {
		 		e.printStackTrace();
		}
		

	}

}
