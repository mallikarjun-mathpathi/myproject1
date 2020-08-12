package com.std.EDtail;
import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.util.ArrayList;
	import java.util.List;

	public class Std_EDetail_Dao {
		public static Connection getConnection(){
					Connection con=null;
					try{
						Class.forName("com.mysql.jdbc.Driver");
						con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","");
					}catch(Exception e){System.out.println(e);}
					return con;
				}
				public static int save(Std_EDetail_Bean stdexm){
					int status=0;
					try{
						
						Connection con=getConnection();
						PreparedStatement ps=con.prepareStatement("insert into examdtl(examid,examtype,examdate,coursename,subject,totalmark,semsectype,nosemsec) values (?,?,?,?,?,?,?,?)");
						ps.setInt(1,stdexm.getExamid());
						ps.setString(2,stdexm.getExamtype());
						ps.setString(3,stdexm.getExamdate());
						ps.setString(4,stdexm.getCoursename());
						ps.setString(5,stdexm.getSubject());
						ps.setString(6,stdexm.getTotalmark());
						ps.setString(7,stdexm.getSemsectype());	
						ps.setString(8,stdexm.getNosemsec());
						status=ps.executeUpdate();
				
					}catch(Exception e){System.out.println(e);}
					return status;
					}
				
				
				public static List<Std_EDetail_Bean> getAllRecordsForEDetail(){
					List<Std_EDetail_Bean> list=new ArrayList<Std_EDetail_Bean>();
					
					try{
						Connection con=getConnection();
						PreparedStatement ps=con.prepareStatement("select * from examdtl");
						ResultSet rs=ps.executeQuery();
						while(rs.next()){
							Std_EDetail_Bean stdexm=new Std_EDetail_Bean();
							stdexm.setExamid(rs.getInt("examid"));
							stdexm.setExamtype(rs.getString("examtype"));
							stdexm.setExamdate(rs.getString("examdate"));
							stdexm.setCoursename(rs.getString("coursename"));
							stdexm.setSubject(rs.getString("subject"));
							stdexm.setTotalmark(rs.getString("totalmark"));
							stdexm.setSemsectype(rs.getString("semsectype"));
							stdexm.setNosemsec(rs.getString("nosemsec"));
							list.add(stdexm);
							
							
						}
					}catch(Exception e){System.out.println(e);}
					return list;
				}
				
				
				public static int delete(Std_EDetail_Bean stdexm){
					int status=0;
					try{
						Connection con=getConnection();
						PreparedStatement ps=con.prepareStatement("delete from examdtl where examid=?");
					     ps.setInt(1,stdexm.getExamid());
						status=ps.executeUpdate();
					
					}catch(Exception e){System.out.println(e);}

					return status;

				}
				public static Std_EDetail_Bean getRecordByid(int id) {
					Std_EDetail_Bean stdexm=null;
					try{
						Connection con=getConnection();
						PreparedStatement ps=con.prepareStatement("select * from examdtl where examid=?");
						ps.setInt(1,id);
						ResultSet rs=ps.executeQuery();
						while(rs.next()){
							stdexm=new Std_EDetail_Bean();
							stdexm.setExamid(rs.getInt("examid"));
							stdexm.setExamtype(rs.getString("examtype"));
							stdexm.setExamdate(rs.getString("examdate"));
							stdexm.setCoursename(rs.getString("coursename"));
							stdexm.setSubject(rs.getString("subject"));
							stdexm.setTotalmark(rs.getString("totalmark"));
							stdexm.setSemsectype(rs.getString("semsectype"));
							stdexm.setNosemsec(rs.getString("nosemsec"));
										
							}
						
					}
					catch(Exception e){System.out.println(e);}
					return stdexm;
				}

				public static int update(Std_EDetail_Bean stdexm){
					int status=0;
					try{
						Connection con=getConnection();
						System.out.println("Std_EDetail_Dao=" + stdexm.getExamid());
						PreparedStatement ps=con.prepareStatement("update examdtl set examtype=?,examdate=?,coursename=?,subject=?,totalmark=?,semsectype=?,nosemsec=? where examid=?");						
						
						ps.setString(1,stdexm.getExamtype());
						ps.setString(2,stdexm.getExamdate());
						ps.setString(3,stdexm.getCoursename());
						ps.setString(4,stdexm.getSubject());
						ps.setString(5,stdexm.getTotalmark());
						ps.setString(6,stdexm.getSemsectype());	
						ps.setString(7,stdexm.getNosemsec());
						ps.setInt(8,stdexm.getExamid());	
		        	         		status=ps.executeUpdate();
		
					}
					
				catch(Exception e){System.out.println(e);}
				return status;
			}}









