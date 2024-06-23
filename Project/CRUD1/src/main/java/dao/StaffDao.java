package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Staff;

public class StaffDao {
	//i create instances for every needed  class
	private Connection con;
	private String query;
	private PreparedStatement  pst;
	private ResultSet rs;
	public StaffDao(Connection con) {
		this.con = con;
	}
	
	public List<Staff> getAllStaff(){
		List<Staff> staff = new ArrayList<Staff>();//to store all staff in the database
		try {
			query = "select * from staff";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();//this query will return all staff from the staff tables
			
			while(rs.next()) {//if any thing next in the result set the while loop will happen
				Staff row = new Staff();//create instance for the class
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setDepartment(rs.getString("department"));
				row.setContactNumber(rs.getString("contactNumber"));
				//using setter method in the staff add details of staff
				staff.add(row);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return staff;
	}

}
