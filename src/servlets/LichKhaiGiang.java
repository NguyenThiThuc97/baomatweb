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
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.connector.Request;

import models.LichKhaiGiangEntry;

@WebServlet("/LichKhaiGiang")
public class LichKhaiGiang extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:sqlserver://localhost:1433;instance=(local);DatabaseName=TTTH";
	String username = "HQTCSDL";
	String password = "hieu123";
	ArrayList<LichKhaiGiangEntry> CCDT1 = new ArrayList<LichKhaiGiangEntry>();
	ArrayList<LichKhaiGiangEntry> CCDT2 = new ArrayList<LichKhaiGiangEntry>();
	ArrayList<LichKhaiGiangEntry> CCDT3 = new ArrayList<LichKhaiGiangEntry>();
	ArrayList<LichKhaiGiangEntry> CCDT4 = new ArrayList<LichKhaiGiangEntry>();
	ArrayList<LichKhaiGiangEntry> CCDT5 = new ArrayList<LichKhaiGiangEntry>();
	ArrayList<LichKhaiGiangEntry> CCDT6 = new ArrayList<LichKhaiGiangEntry>();	
    public LichKhaiGiang() {
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
    public ArrayList<LichKhaiGiangEntry> getlist1()
    {
    	CCDT1.clear();
		try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT MaLop, ThoiGian, LichKhaiGiang, PhongHoc, ThoiGianHoc FROM dbo.LichKhaiGiang WHERE TenKhoaHoc='CCDT1'";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				LichKhaiGiangEntry entry = new LichKhaiGiangEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				CCDT1.add(entry);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return CCDT1;

    }
    public ArrayList<LichKhaiGiangEntry> getlist2()
    {
    	CCDT2.clear();
		try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT MaLop, ThoiGian, LichKhaiGiang, PhongHoc, ThoiGianHoc FROM dbo.LichKhaiGiang WHERE TenKhoaHoc='CCDT2'";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				LichKhaiGiangEntry entry = new LichKhaiGiangEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				CCDT2.add(entry);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return CCDT2;

    }
    
    public ArrayList<LichKhaiGiangEntry> getlist3()
    {
    	CCDT3.clear();
		try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT MaLop, ThoiGian, LichKhaiGiang, PhongHoc, ThoiGianHoc FROM dbo.LichKhaiGiang WHERE TenKhoaHoc='CCDT3'";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				LichKhaiGiangEntry entry = new LichKhaiGiangEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				CCDT3.add(entry);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return CCDT3;

    }
    
    public ArrayList<LichKhaiGiangEntry> getlist4()
    {
    	CCDT4.clear();
		try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT MaLop, ThoiGian, LichKhaiGiang, PhongHoc, ThoiGianHoc FROM dbo.LichKhaiGiang WHERE TenKhoaHoc='CCDT4'";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				LichKhaiGiangEntry entry = new LichKhaiGiangEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				CCDT4.add(entry);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return CCDT4;

    }
    public ArrayList<LichKhaiGiangEntry> getlist5()
    {
    	CCDT5.clear();
		try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT MaLop, ThoiGian, LichKhaiGiang, PhongHoc, ThoiGianHoc FROM dbo.LichKhaiGiang WHERE TenKhoaHoc='CCDT5'";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				LichKhaiGiangEntry entry = new LichKhaiGiangEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				CCDT5.add(entry);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return CCDT5;

    }
    public ArrayList<LichKhaiGiangEntry> getlist6()
    {
    	CCDT6.clear();
		try {
			Connection connec = null ;
			connec = DriverManager.getConnection(url, username, password);
			Statement state = connec.createStatement();
			String query = "SELECT MaLop, ThoiGian, LichKhaiGiang, PhongHoc, ThoiGianHoc FROM dbo.LichKhaiGiang WHERE TenKhoaHoc='CCDT6'";
			ResultSet rs = state.executeQuery(query);
			while(rs.next())
			{
				LichKhaiGiangEntry entry = new LichKhaiGiangEntry(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				CCDT6.add(entry);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return CCDT6;

    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		getlist1();
		getlist2();
		getlist3();
		getlist4();
		getlist5();
		getlist6();
		request.setAttribute("CCDT6", CCDT6);
		request.setAttribute("CCDT5", CCDT5);
		request.setAttribute("CCDT4", CCDT4);
		request.setAttribute("CCDT3", CCDT3);
		request.setAttribute("CCDT2", CCDT2);
		request.setAttribute("CCDT1", CCDT1);
		request.getRequestDispatcher("LichKhaiGiang.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
