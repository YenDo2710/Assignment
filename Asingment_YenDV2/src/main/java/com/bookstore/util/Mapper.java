package com.bookstore.util;


import java.sql.ResultSet;
import java.sql.SQLException;

import com.bookstore.model.Member;



public class Mapper {

	private Mapper() {

	}

	public static Member mapToMember(ResultSet resultSet) throws SQLException {
		if (resultSet != null)
			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String firstName = resultSet.getString("firstName");
				String lastName = resultSet.getString("lastName");
				String userName = resultSet.getString("userName");
				String password = resultSet.getString("password");
				String phone = resultSet.getString("phone");
				String email = resultSet.getString("email");
				String description = resultSet.getString("description");
				String createDate = resultSet.getString("createDate");
				String updateTime = resultSet.getString("updateTime");

				return new Member(id, firstName, lastName, userName, password, phone, email, description, createDate,
						updateTime);
			}
		return null;
	}
}
