package com.exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Student;
import com.exam.*;

public class examDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp", "root", "");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(examBean exm) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into exams(stdid,examid,examtype,examdate,course,semester) values(?,?,?,?,?,?)");

			ps.setInt(1, exm.getStdid());
			ps.setString(2, exm.getExamid());
			ps.setString(3, exm.getExamtype());
			ps.setString(4, exm.getExamdate());
			ps.setString(5, exm.getCourse());
			ps.setString(6, exm.getSemester());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static List<examBean> getAllRecords() {
		List<examBean> list = new ArrayList<examBean>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from exams");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				examBean exm = new examBean();
				/* exm.setId(rs.getInt("id")); */
				exm.setStdid(rs.getInt("stdid"));
				exm.setExamid(rs.getString("examid"));
				exm.setExamtype(rs.getString("examtype"));
				exm.setExamdate(rs.getString("examdate"));
				exm.setCourse(rs.getString("course"));
				exm.setSemester(rs.getString("semester"));

				list.add(exm);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static int delete(examBean exm) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from exams where stdid=?");
			ps.setInt(1, exm.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static examBean getRecordById(int id) {
		examBean exm = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from exams where stdid=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				exm = new examBean();
				/* exm.setId(rs.getInt("id")); */
				exm.setStdid(rs.getInt("stdid"));
				exm.setExamid(rs.getString("examid"));
				exm.setExamtype(rs.getString("examtype"));
				exm.setExamdate(rs.getString("examdate"));
				exm.setCourse(rs.getString("course"));
				exm.setSemester(rs.getString("semester"));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return exm;
	}

	public static int update(examBean exm) {
		int status = 0;

		try {
			Connection con = getConnection();
			
			PreparedStatement ps = con.prepareStatement(
					"update exams set examid=?,examtype=?,examdate=?,course=?,semester=? where stdid=?");
			
			ps.setString(1, exm.getExamid());
			ps.setString(2, exm.getExamtype());
			ps.setString(3, exm.getExamdate());
			ps.setString(4, exm.getCourse());
			ps.setString(5, exm.getSemester());
			ps.setInt(6, exm.getStdid()); 
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}

}
