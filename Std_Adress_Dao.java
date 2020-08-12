package com.std.Address;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Student;

public class Std_Adress_Dao {
		public static Connection getConnection(){
			Connection con=null;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","");
			}catch(Exception e){System.out.println(e);}
			return con;
		}
		public static int save(Std_Adress_Bean stdads){
			int status=0;
			try{
				
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("insert into std_per_address(id,stdid,homeno,street,village,city,dist,pincode,state,country,tmp_homeno,tmp_street,tmp_village,tmp_city,tmp_dist,tmp_pincode,tmp_state,tmp_country) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setInt(1,stdads.getId());
				ps.setInt(2,stdads.getStdId());
				ps.setString(3,stdads.getHomeno());
				ps.setString(4,stdads.getStreet());
				ps.setString(5,stdads.getVillage());
				ps.setString(6,stdads.getCity());
				ps.setString(7,stdads.getDist());
				ps.setString(8,stdads.getPincode());
				ps.setString(9,stdads.getState());
				ps.setString(10,stdads.getCountry());
				
				ps.setString(11,stdads.getTmp_homeno());
				ps.setString(12,stdads.getTmp_street());
				ps.setString(13,stdads.getTmp_village());
				ps.setString(14,stdads.getTmp_city());
				ps.setString(15,stdads.getTmp_dist());
				ps.setString(16,stdads.getTmp_pincode());
				ps.setString(17,stdads.getTmp_state());
				ps.setString(18,stdads.getTmp_country());

				status=ps.executeUpdate();
			}catch(Exception e){System.out.println(e);}
			return status;
			}
		
		
		public static List<Std_Adress_Bean> getAllRecordsForAddress(){
			List<Std_Adress_Bean> list=new ArrayList<Std_Adress_Bean>();
			
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from std_per_address");
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					Std_Adress_Bean stads=new Std_Adress_Bean();
					/* System.out.println(rs.getInt("stdid")); */
					stads.setStdId(rs.getInt("stdid"));
					stads.setHomeno(rs.getString("homeno"));
					stads.setStreet(rs.getString("street"));
					stads.setVillage(rs.getString("village"));
					stads.setCity(rs.getString("city"));
					stads.setDist(rs.getString("dist"));
					stads.setPincode(rs.getString("pincode"));
					stads.setState(rs.getString("state"));
					stads.setCountry(rs.getString("country"));
					
					stads.setTmp_homeno(rs.getString("tmp_homeno"));
					stads.setTmp_street(rs.getString("tmp_street"));
					stads.setTmp_village(rs.getString("tmp_village"));
					stads.setTmp_city(rs.getString("tmp_city"));
					stads.setTmp_dist(rs.getString("tmp_dist"));
					stads.setTmp_pincode(rs.getString("tmp_pincode"));
					stads.setTmp_state(rs.getString("tmp_state"));
					stads.setTmp_country(rs.getString("tmp_country"));
					list.add(stads);
					
					
				}
			}catch(Exception e){System.out.println(e);}
			return list;
		}
		
		public static Std_Adress_Bean getRecordById(int stdid) {
			Std_Adress_Bean stdads=null;
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from std_per_address where stdid=?");
				ps.setInt(1,stdid);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					stdads=new Std_Adress_Bean();
					 stdads.setStdId(rs.getInt("stdid")); 
					stdads.setHomeno(rs.getString("homeno"));
					stdads.setStreet(rs.getString("street"));
					 stdads.setVillage(rs.getString("village"));
					  stdads.setCity(rs.getString("city"));
					  stdads.setDist(rs.getString("dist")); 
					  stdads.setPincode(rs.getString("pincode"));
					 stdads.setState(rs.getString("state"));
					 stdads.setCountry(rs.getString("country"));
					 
					 stdads.setTmp_homeno(rs.getString("tmp_homeno"));
						stdads.setTmp_street(rs.getString("tmp_street"));
						 stdads.setTmp_village(rs.getString("tmp_village"));
						  stdads.setTmp_city(rs.getString("tmp_city"));
						  stdads.setTmp_dist(rs.getString("tmp_dist")); 
						  stdads.setTmp_pincode(rs.getString("tmp_pincode"));
						 stdads.setTmp_state(rs.getString("tmp_state"));
						 stdads.setTmp_country(rs.getString("tmp_country"));
				}
			}catch(Exception e){System.out.println(e);}
			return stdads;
		}

		public static int update(Std_Adress_Bean stdads){
			int status=0;
		
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("update std_per_address set homeno=?,street=?,village=?,city=?,dist=?,pincode=?,state=?,country=?,tmp_homeno=?,tmp_street=?,tmp_village=?,tmp_city=?,tmp_dist=?,tmp_pincode=?,tmp_state=?,tmp_country=? where stdid=?");
			/* ps.setInt(1,stdads.getId()); */
				ps.setString(1,stdads.getHomeno());
				ps.setString(2,stdads.getStreet());
				ps.setString(3,stdads.getVillage());
				ps.setString(4,stdads.getCity());
				ps.setString(5,stdads.getDist());
				ps.setString(6,stdads.getPincode());
				ps.setString(7,stdads.getState());
				ps.setString(8,stdads.getCountry());
				
				ps.setString(9,stdads.getTmp_homeno());
				ps.setString(10,stdads.getTmp_street());
				ps.setString(11,stdads.getTmp_village());
				ps.setString(12,stdads.getTmp_city());
				ps.setString(13,stdads.getTmp_dist());
				ps.setString(14,stdads.getTmp_pincode());
				ps.setString(15,stdads.getTmp_state());
				ps.setString(16,stdads.getTmp_country());
				ps.setInt(17,stdads.getStdId());
				status=ps.executeUpdate();
			}catch(Exception e){System.out.println(e);}
			return status;
			}
			
		} 
		
		
	
