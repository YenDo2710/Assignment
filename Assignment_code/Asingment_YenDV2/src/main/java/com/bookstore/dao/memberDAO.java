package com.bookstore.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.bookstore.model.Member;
import com.bookstore.util.ConnectionDB;
import com.bookstore.util.Mapper;


public class memberDAO {
	Connection connect = ConnectionDB.getInstance().getConnection();

	public void createMember(String userName, String email, String password) {
		try {
			SimpleDateFormat format_Date = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");

			String sql = "INSERT INTO [Member] (Firstname, LastName, Username, Password, Phone, Email, Description, CreatedDate, UpdateTime) "
					+ "VALUES (?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = connect.prepareStatement(sql);
			pst.setString(1, "");
			pst.setString(2, "");
			pst.setString(3, userName);
			pst.setString(4, password);
			pst.setString(5, "");
			pst.setString(6, email);
			pst.setString(7, "");
			pst.setString(8, format_Date.format(new Date()));
			pst.setString(9, format_Date.format(new Date()));

			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Member getAccount(String userName, String password) {
		try {
			String sql = "SELECT * FROM [Member] WHERE (Username = ? OR Email = ?) AND Password = ? ";
			PreparedStatement pst = connect.prepareStatement(sql);
			pst.setString(1, userName);
			pst.setString(2, userName);
			pst.setString(3, password);
			ResultSet resultSet = pst.executeQuery();

			return Mapper.mapToMember(resultSet);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Member> getAllMember(){
		List<Member> list = new ArrayList();
		try {
			String sql = "SELECT * FROM [Member]";
			PreparedStatement pst = connect.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Member m = new Member();
				m.setId(rs.getInt(1));
				m.setFirstName(rs.getString(2));
				m.setLastName(rs.getString(3));
				m.setUserName(rs.getString(4));
				m.setPassword(rs.getString(5));
				m.setPhone(rs.getString(6));
				m.setEmail(rs.getString(7));
				m.setDescription(rs.getString(8));
				m.setCreateDate(rs.getString(9));
				m.setUpdateTime(rs.getString(10));
				list.add(m);
				
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public boolean checkAccount(String userName, String email) {
		try {
			String sql = "SELECT COUNT(*) AS COUNT FROM [Member] WHERE (Username = ? and Email = ?)";
			PreparedStatement pst = connect.prepareStatement(sql);
			
			pst.setString(1, userName);
			pst.setString(2, email);
			
			ResultSet resultSet = pst.executeQuery();
			if(resultSet .next()) {
				return resultSet.getInt("COUNT")>0;
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
		return false;	
	}
//	public static void main(String[] args) {
//		memberDAO member = new memberDAO();
//		List<Member> list = member.getAllMember();
//		System.out.println(list);
//	}
}

