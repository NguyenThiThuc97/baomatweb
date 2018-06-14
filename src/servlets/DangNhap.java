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

@WebServlet("/DangNhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	Security security = new Security();
	
    public DangNhap() {
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
		request.getRequestDispatcher("WEB-INF/DangNhap.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String page="";
		String quyenhan="";
		
		//mã hóa và giải mã mật khẩu
		
		if(security.verifyPassword(username, password))
            {
			Connection connec = null;
			try {
				String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
				String usernamesql = "HQTCSDL";
				String passwordsql = "hieu123";
				String query = "SELECT TenDangNhap, MatKhau, QuyenHan FROM dbo.TaiKhoan WHERE TenDangNhap LIKE ? ";
				connec = DriverManager.getConnection(url, usernamesql, passwordsql);
				PreparedStatement ps = connec.prepareStatement(query);
				ps.setString(1, username);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					if(rs.getString(1).equals(username) && rs.getString(2).equals(password) )
					{
						quyenhan = rs.getString(3);
						if(rs.getString(3).equals("Admin"))
						{
							page="Home.jsp";
						}
						else
						{
							page="Home.jsp";
						}
					}
					else
					{
						page="DangNhap.jsp";
					}
					}
				HttpSession session = request.getSession();
				session.setAttribute("user", username);
				session.setAttribute("quyenhan", quyenhan);
				request.getRequestDispatcher(page).forward(request, response);
				}
			 	catch (SQLException e) {
			 		e.printStackTrace();
			}
            }
        else
            response.getOutputStream().println("Login failed! Please check the username/password and try again");
		
		
		
		
	}

}
