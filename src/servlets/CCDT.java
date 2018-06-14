package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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

import models.CTDTEntry;

@WebServlet("/CCDT")
public class CCDT extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH";
	String username = "HQTCSDL";
	String password = "hieu123"; 
	ArrayList<CTDTEntry> CCDT = new ArrayList<CTDTEntry>();

    public CCDT() {
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
    public ArrayList<CTDTEntry> getList()
    {
    	CCDT.clear();
    	try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT * FROM dbo.ChuongTrinhDaoTao";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				CTDTEntry entry = new CTDTEntry(rs.getString(1), rs.getString(2), rs.getString(3));
				CCDT.add(entry);
			}
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
    	return CCDT;
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getList();
		request.setAttribute("CCDT", CCDT);
		request.getRequestDispatcher("admin/DSCCDT.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
