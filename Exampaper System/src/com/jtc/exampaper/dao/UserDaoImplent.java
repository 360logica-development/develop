package com.jtc.exampaper.dao;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.jtc.exampaper.model.*;
import com.jtc.exampaper.dao.UserDao;
import com.jtc.exampaper.dbconnection.DBConnection;
import java.util.*;

//import com.mysql.jdbc.PreparedStatement;
public class UserDaoImplent implements UserDao {
	boolean b1;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public UserDaoImplent() {
		try {
			con = DBConnection.getMySQLConnection();
			System.out.println(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int addUser(User user) {
		System.out.println("hello");
		// con=com.jtc.exampaper.dbconnection.DBConnection.getMySQLConnection();
		try {
			String s2 = "select * from student where emailId=?";
			ps = con.prepareStatement(s2);
			ps.setString(1, user.getEmailId());
			rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String emailId = rs.getString(3);
				String userName = rs.getString(4);
				String password = rs.getString(5);
				String autoPassword = rs.getString(6);
				String contactNumber = rs.getString(7);
				System.out.println(emailId);
				if (emailId.equals(user.getEmailId())) {
					return 1;
				}
			}
			String sql = "insert into student(name,emailId,userName,password,autoPassword,contactNumber) values(?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmailId());
			ps.setString(3, user.getUserName());
			ps.setString(4, user.getPassword());
			ps.setString(5, PasswordGenerator.generateRandomPassword());
			ps.setString(6, user.getContactNumber());
			int i1 = ps.executeUpdate();
			if (i1 > 1) {
				System.out.println("inserted.....");
			} else {
				System.out.println("no inserted.......");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 2;
	}

	public int loginUser(User user) {
		try {
			String s3 = "select * from student where userName=? and password=?";
			ps = con.prepareStatement(s3);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();
			System.out.println("**************");
			while (rs.next()) {
				String userName = rs.getString("userName");
				String password = rs.getString("password");
				System.out.println("***y66788$$$$$$$$");
				if (userName.equals(user.getUserName()) && password.equals(user.getPassword())) {
					return 1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 2;
	}

	public int addQuestion(Question ques) {
		try {
			String sql = "insert into questions(institute,question,doq,module,subject,semester,branch) values(?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, ques.getInstitute());
			ps.setString(2, ques.getQuestion());
			ps.setString(3, ques.getDoq());
			ps.setString(4, ques.getModule());
			ps.setString(5, ques.getSubject());
			ps.setString(6, ques.getSemester());
			ps.setString(7, ques.getBranch());
			int i1 = ps.executeUpdate();
			if (i1 > 1) {
				System.out.println("inserted.....");
			} else {
				System.out.println("no inserted.......");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 1;
	}

	@Override
	public List<Question> createPaperEasy(Question ques) {
		List<Question> al = new ArrayList<Question>();
				try {
				String s3 = "select * from questions where institute=? and branch=? and semester=? and subject=? and module=? and doq='easy'";
				ps = con.prepareStatement(s3);
				ps.setString(1, ques.getInstitute());
				ps.setString(2, ques.getBranch());
				ps.setString(3, ques.getSemester());
				ps.setString(4, ques.getSubject());
				ps.setString(5, ques.getModule());
				rs = ps.executeQuery();
				while (rs.next()) {
					ques = new Question();
					ques.setInstitute(rs.getString("institute"));
					ques.setQuestion(rs.getString("question"));
					ques.setDoq(rs.getString("doq"));
					ques.setModule(rs.getString("module"));
					ques.setSubject(rs.getString("subject"));
					ques.setSemester(rs.getString("semester"));
					ques.setBranch(rs.getString("branch"));
					al.add(ques);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return al;
	}

	@Override
	public List<Question> showQuestion(Question ques) {
		List<Question> al = new ArrayList<Question>();
		try {
			String s3 = "select * from questions where branch=? and semester=? and subject=?";
			ps = con.prepareStatement(s3);
			ps.setString(1, ques.getBranch());
			ps.setString(2, ques.getSemester());
			ps.setString(3, ques.getSubject());
			rs = ps.executeQuery();
			while (rs.next()) {
				ques = new Question();
				ques.setInstitute(rs.getString("institute"));
				ques.setQuestion(rs.getString("question"));
				ques.setDoq(rs.getString("doq"));
				ques.setModule(rs.getString("module"));
				ques.setSubject(rs.getString("subject"));
				ques.setSemester(rs.getString("semester"));
				ques.setBranch(rs.getString("branch"));
				al.add(ques);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	@Override
	public List<Question> createPaperMedium(Question ques) {
		List<Question> al = new ArrayList<Question>();
		try {
		String s3 = "select * from questions where institute=? and branch=? and semester=? and subject=? and module=? and doq='Medium'";
		ps = con.prepareStatement(s3);
		ps.setString(1, ques.getInstitute());
		ps.setString(2, ques.getBranch());
		ps.setString(3, ques.getSemester());
		ps.setString(4, ques.getSubject());
		ps.setString(5, ques.getModule());
		rs = ps.executeQuery();
		while (rs.next()) {
			ques = new Question();
			ques.setInstitute(rs.getString("institute"));
			ques.setQuestion(rs.getString("question"));
			ques.setDoq(rs.getString("doq"));
			ques.setModule(rs.getString("module"));
			ques.setSubject(rs.getString("subject"));
			ques.setSemester(rs.getString("semester"));
			ques.setBranch(rs.getString("branch"));
			al.add(ques);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
		return al;
	}

	@Override
	public List<Question> createPaperHard(Question ques) {
		List<Question> al = new ArrayList<Question>();
		try {
		String s3 = "select * from questions where institute=? and branch=? and semester=? and subject=? and module=? and doq='Hard'";
		ps = con.prepareStatement(s3);
		ps.setString(1, ques.getInstitute());
		ps.setString(2, ques.getBranch());
		ps.setString(3, ques.getSemester());
		ps.setString(4, ques.getSubject());
		ps.setString(5, ques.getModule());
		rs = ps.executeQuery();
		while (rs.next()) {
			ques = new Question();
			ques.setInstitute(rs.getString("institute"));
			ques.setQuestion(rs.getString("question"));
			ques.setDoq(rs.getString("doq"));
			ques.setModule(rs.getString("module"));
			ques.setSubject(rs.getString("subject"));
			ques.setSemester(rs.getString("semester"));
			ques.setBranch(rs.getString("branch"));
			al.add(ques);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
		return al;
	}
}