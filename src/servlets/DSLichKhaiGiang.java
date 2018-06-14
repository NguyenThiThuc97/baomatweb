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

import models.LichKhaiGiangEntry;

@WebServlet("/DSLichKhaiGiang")
public class DSLichKhaiGiang extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH";
	String username = "HQTCSDL";
	String password = "hieu123"; 
	ArrayList<LichKhaiGiangEntry> DSLKG = new ArrayList<LichKhaiGiangEntry>();

    public DSLichKhaiGiang() {
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
    public ArrayList<LichKhaiGiangEntry> getList()
    {
    	DSLKG.clear();
    	try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "EXECUTE dbo.LopHoc ";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				LichKhaiGiangEntry entry = new LichKhaiGiangEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
				DSLKG.add(entry);
			}
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
    	return DSLKG;
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getList();
		request.setAttribute("DSLKG", DSLKG);
		request.getRequestDispatcher("admin/DSLichKhaiGiang.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
