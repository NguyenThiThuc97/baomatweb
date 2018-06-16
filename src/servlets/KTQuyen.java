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

@WebServlet("/KTQuyen")
public class KTQuyen extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public KTQuyen() {
        super();
        // TODO Auto-generated constructor stub
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
		HttpSession session = request.getSession();
		String user1 = (String)session.getAttribute("user");
		String hoten1 =(String)session.getAttribute("hoten");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String page="";
		//String quyenhan="";
		Connection connec = null;
		String st=user1+hoten1;
		boolean kt=XSS.XSSkttk(st);
		try {
			if(kt==true && TranBoDem.TBD100(user1)==true && TranBoDem.TBD100(hoten1)==true)
			{
				String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
				String usernamesql = "HQTCSDL";
				String passwordsql = "hieu123";
				String query = "SELECT TenDangNhap,QuyenHan,HoTen FROM dbo.TaiKhoan WHERE TenDangNhap LIKE ? ";
				connec = DriverManager.getConnection(url, usernamesql, passwordsql);
				PreparedStatement ps = connec.prepareStatement(query);
				ps.setString(1, user1);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					if(rs.getString(1).equals(user1) && rs.getString(3).equals(hoten1) )
					{
						//quyenhan = rs.getString(2);
						if(rs.getString(2).equals("Admin"))
						{
							page="Admin.jsp";
						}
						else
						{
							page="User.jsp";
						}
					}
					else
					{
						page="Home.jsp";
					}
					}
				//session.setAttribute("quyenhan", quyenhan);
				//session.setAttribute("hoten",hoten1);
				request.getRequestDispatcher(page).forward(request, response);
			}
			else
			{
				page="WEB-INF/DangNhap.jsp";
				request.getRequestDispatcher(page).forward(request, response);
			}
		}
		 	catch (SQLException e) {
		 		e.printStackTrace();
		}
		
		request.getRequestDispatcher("WEB-INF/DangNhap.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
