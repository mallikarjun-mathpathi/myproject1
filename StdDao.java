package com.stdreg;
import  com.bean.Student;
import java.util.Scanner;
import javax.script.*;
import javax.servlet.jsp.JspWriter;

import org.apache.jasper.tagplugins.jstl.core.Out;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.bean.Student;
public class StdDao {
	public static Connection getConnection(){
		Connection con=null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
	public String getMessage() {
		return getMessage();
	}
	public static int save(Student std) throws IOException{
		
		StringBuffer javascript = null;
        ScriptEngine runtime = null;
        
		int status=0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			
			 con=getConnection();
			 ps=con.prepareStatement("insert into std_registration(stdid,stdname,lastname,fathername,mothername,dob,contact,gender) values(?,?,?,?,?,?,?,?)");
			ps.setInt(1,std.getStdId());
			ps.setString(2,std.getStdName());
			ps.setString(3,std.getLastName());
			ps.setString(4,std.getFatherName());
			ps.setString(5,std.getMotherName());
			ps.setString(6,std.getDob());
			ps.setString(7,std.getContact());
			ps.setString(8, std.getGender());

			status=ps.executeUpdate();
		}/*catch(Exception e){System.out.println(ps.e.getMessage());}*/
		
		catch (Exception e) {
		JspWriter out = null ;
		
		/*
		 * String html = "<html>\n" + "    <body>\n" +
		 * "        <h1>alert('Result: ' + e)</h1>\n" + "    </body>\n" + "</html>\n";
		 */
		out.println("<html> e </html>");
		
			System.out.println("Result: " + e);
		/* JspWriter out = this.pageContext.getOut(); */
			System.out.println("<http>");
			System.out.println("<body>");
			System.out.println("<%= out.println(e); %>" + e);
			System.out.println("<h1>heading 1</h1>");
			System.out.println("<e>");
			System.out.println("</http>");
			System.out.println("</body>");
			System.out.println("  <script>alert( 'Hello, world!' );</script>");
			/* out = out.print("Error:: <BR>" + e); */
			/*e.printStackTrace();*/
		} finally {
			
			/*
			 * try { if (rs != null) rs.close(); } catch (SQLException e) {
			 * System.out.println("Result: " + e); } try { if (ps != null) ps.close(); }
			 * catch (SQLException e) { e.printStackTrace(); } try { if (con != null)
			 * con.close(); } catch (SQLException e) { e.printStackTrace(); }
			 */
		}
	
		return status;
		}
	
	
	
	
	
	
	
	
	
	
	
	public static List<Student> getAllRecords(){
		List<Student> list=new ArrayList<Student>();
		
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from std_registration");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Student std=new Student();
				/* System.out.println(rs.getInt("stdid")); */
				std.setStdId(rs.getInt("stdid"));
				std.setStdName(rs.getString("stdName"));
				std.setLastName(rs.getNString("lastName"));
				std.setFatherName(rs.getString("fatherName"));
				std.setMotherName(rs.getString("motherName"));
				std.setDob(rs.getString("dob"));
				std.setContact(rs.getString("contact"));
				std.setGender(rs.getString("gender"));
				list.add(std);
				
				
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}
	public static int delete(Student std){
		int status=0;
		
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from std_registration where stdid=?");
			ps.setInt(1,std.getStdId());
			status=ps.executeUpdate();
		
		}catch(Exception e){System.out.println(e);}

		return status;
	}
	public static Student getRecordById(int stdid) {
		Student std=null;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from std_registration where stdid=?");
			ps.setInt(1,stdid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				std=new Student();
				 std.setStdId(rs.getInt("stdid")); 
				std.setStdName(rs.getString("stdName"));
				std.setLastName(rs.getString("lastName"));
				 std.setFatherName(rs.getString("fatherName"));
				  std.setMotherName(rs.getString("motherName"));
				  std.setDob(rs.getString("dob")); 
				  std.setContact(rs.getString("contact"));
				 std.setGender(rs.getString("gender"));
			}
		}catch(Exception e){System.out.println(e);}
		return std;
	}
	public static int update(Student std){
		int status=0;
	
		try{
			Connection con=getConnection();
				/* System.out.println("update gender=" + std.getGender()); */ 
				/* System.out.println("stdDao=" + std.getStdId()); */
			PreparedStatement ps=con.prepareStatement("update std_registration set stdname=?,lastname=?,fathername=?,mothername=?,dob=?,contact=?,gender=? where stdid=?");
			ps.setString(1,std.getStdName());
			ps.setString(2,std.getLastName());
			ps.setString(3,std.getFatherName());
			ps.setString(4,std.getMotherName());
			ps.setString(5,std.getDob());
			ps.setString(6,std.getContact());
			ps.setString(7,std.getGender());
			ps.setInt(8,std.getStdId());
			
			
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;

		
	} 
}
