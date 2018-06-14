package servlets;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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


@WebServlet("/Security")
public class Security extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Security() {
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
    
    public String encryptPasswordReceivedFromLoginPage(String unecryptedPassword){//mã hóa mật khẩu lấy từ form
        String salt = "thucnguyen";
        MessageDigest messageDigest=null;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update((unecryptedPassword+salt).getBytes());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return (new BigInteger(messageDigest.digest())).toString(16);
         
    }
     
    public String retrieveEncryptedAndSaltedPasswordFromDatabase(String userID){//lấy mật khẩu đã được mã hóa ở cơ sở dữ liệu
        //Normally you would store salted and encrypted passwords for all users in database
        //At the time of login you will salt and encrypt the password entered by user on login 
        //page and compare it with the one in database.
        //For sake of simplicity we are hardcoding the salted password hash here,
        //but in real world it will come from database. Password is mysecret123
    	
    	Connection connec = null;
    	
    	String abc="";
    	
    	try {
    		String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
			String usernamesql = "HQTCSDL";
			String passwordsql = "hieu123";
			String query = "SELECT PassEncrypted from TaiKhoan WHERE TenDangNhap LIKE ? ";
			connec = DriverManager.getConnection(url, usernamesql, passwordsql);
			PreparedStatement ps = connec.prepareStatement(query);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				
				abc=rs.getString("PassEncrypted").toString();
				
			}
				
			
		}
		catch (SQLException e) {
		 		e.printStackTrace();
		 		abc=null;
		}
		return abc;
    	
        
    }
     
    public boolean verifyPassword(String userId, String unecryptedPassword){
        String encryptedLoginPagePassword = encryptPasswordReceivedFromLoginPage(unecryptedPassword);
        String encryptedPasswordFromDatabase = retrieveEncryptedAndSaltedPasswordFromDatabase(userId);
        
//        System.out.println(encryptedLoginPagePassword+"encryptedLoginPagePassword");
//        System.out.println(encryptedPasswordFromDatabase+"encryptedPasswordFromDatabase");
        
        //chỉ mới mã hóa cho 3 người là hiếu, phan, phụng
        if (encryptedLoginPagePassword.equals(encryptedPasswordFromDatabase))
            return true;
        return false;
    }
    
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.getRequestDispatcher("WEB-INF/DangNhap.jsp").forward(request, response);
//	}
//	
//	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html;charset=UTF-8");
//		request.setCharacterEncoding("utf-8");
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		String page="";
//		String quyenhan="";
//		Connection connec = null;
//		try {
//			String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH;";
//			String usernamesql = "HQTCSDL";
//			String passwordsql = "hieu123";
//			String query = "SELECT TenDangNhap, MatKhau, QuyenHan FROM dbo.TaiKhoan WHERE TenDangNhap LIKE ? ";
//			connec = DriverManager.getConnection(url, usernamesql, passwordsql);
//			PreparedStatement ps = connec.prepareStatement(query);
//			ps.setString(1, username);
//			ResultSet rs = ps.executeQuery();
//			while(rs.next())
//			{
//				if(rs.getString(1).equals(username) && rs.getString(2).equals(password) )
//				{
//					quyenhan = rs.getString(3);
//					if(rs.getString(3).equals("Admin"))
//					{
//						page="Home.jsp";
//					}
//					else
//					{
//						page="Home.jsp";
//					}
//				}
//				else
//				{
//					page="DangNhap.jsp";
//				}
//				}
//			HttpSession session = request.getSession();
//			session.setAttribute("user", username);
//			session.setAttribute("quyenhan", quyenhan);
//			request.getRequestDispatcher(page).forward(request, response);
//			}
//		 	catch (SQLException e) {
//		 		e.printStackTrace();
//		}
//		
//	}

}
