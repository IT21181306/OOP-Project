package com.admin;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement  stmt = null;
	private static ResultSet rs = null;
	
  public static boolean validate(String username, String password){
	  
	  try {
		  con = DBConnect.getConnection();
		  stmt = con.createStatement();
		  String sql = "select * from admin where username='"+username+"' and password='"+password+"'";
		  rs = stmt.executeQuery(sql);
		  
		  if(rs.next()) {
			  isSuccess = true;
		  }else {
			  isSuccess = false;
		  }
		  
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	  
	  return isSuccess;
	  
  }
  public static List<Admin> getAdmin(String userName){
	  ArrayList<Admin> admin = new ArrayList<>();
	  
	  try {
		  con = DBConnect.getConnection();
		  stmt = con.createStatement();
		  String sql = "select * from admin where username='"+userName+"'";
		  rs = stmt.executeQuery(sql);
		  
		 while(rs.next()) {
			  int id = rs.getInt(1);
			  String name = rs.getString(2);
			  String email = rs.getString(3);
			  String phone = rs.getString(4);
			  String username = rs.getString(5);
			  String password = rs.getString(6);
			  String role = rs.getString(7);
			  
			  Admin adm = new Admin(id,name,email,phone,username,password,role);
			  admin.add(adm);
		 }
		  
	  } catch (Exception e) {
		  
	  }
	  
	  return admin;
  }
  
  public static boolean insertadmin(String name, String email, String phone, String username, String password, String role) {
  
	  boolean isSuccess = false;
	  
	  
	  try {
		  con = DBConnect.getConnection();
		  stmt = con.createStatement();
		  String sql = "insert into admin values (0,'"+name+"','"+ email+"','"+phone+"','"+username+"','"+password+"','"+role+"')";
		  int rs = stmt.executeUpdate(sql);
		  
		  if(rs > 0) {
			  isSuccess = true;
		  } else {
			  isSuccess = false;
		  }
		 
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	  
	  return isSuccess;
  }
  
 public static boolean updateadmin(String id, String name, String email, String phone, String username, String password, String role) {
	
	 try {
		 
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		 String sql = "update admin set name='"+name+"', email='"+email+"', phone='"+phone+"', username='"+username+"', password='"+password+"', role='"+role+"'"
				 +"where id='"+id+"'";
		 int rs = stmt.executeUpdate(sql);
		 if(rs > 0) {
			 isSuccess = true;
		 }
		 else {
			 isSuccess = false;
		 }
		 
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	 
	 return isSuccess;
 }
 
 public static List<Admin> getAdminDetails(String Id){
	 
	 int convertedID = Integer.parseInt(Id);
	 
	 ArrayList<Admin> adm = new ArrayList<>();
	 
	 try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from admin where id ='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			String role = rs.getString(7);
			
			Admin a = new Admin(id, name, email, phone, username, password, role);
			adm.add(a);
		}
		
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	 
	 return adm;
	 
 }
 
 public static boolean deleteAdmin(String id) {
	 
	 int convID = Integer.parseInt(id);
	 try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="delete from admin when id='"+convID+"'";
		int r = stmt.executeUpdate(sql);
		
		
		if(r>0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	 }
	 catch (Exception e) {
		 e.printStackTrace();
	 }
	 return isSuccess;
	 
 }
}

