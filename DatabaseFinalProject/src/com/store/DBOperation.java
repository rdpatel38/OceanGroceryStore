package com.store;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBOperation {
	Connection con = null;
	boolean test=false;
	Product s;
	
	public DBOperation() {
		test = connection();
	}
	
	public boolean connection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OceanDB", "root", "password");
		} catch (Exception e2) {
            System.out.println(e2);
            return false;
        }
		
		return true;
	}
	
	public boolean insertion(Product s) {
	   try {
	     if (test) {
             String exp="insert into Store_Product (p_id, p_name, p_cat, p_desc, p_size, p_uprice, p_rprice) values(?,?,?,?,?,?,?)";
 	         PreparedStatement ps = con.prepareStatement(exp);
	         ps.setInt(1, s.getpID());
	         ps.setString(2, s.getpName());
	         ps.setString(3, s.getpCat());
	         ps.setString(4, s.getpDesc());
	         ps.setString(5, s.getpsize());
	         ps.setFloat(6, s.getunitPrice());
	         ps.setFloat(7, s.getregPrice());
	         
	         int i = ps.executeUpdate();
	         if (i > 0)   return true;
	         else  return false;
	     }
         return false;
	   }catch (Exception e2) { return false; }
	}
	
	public boolean update(Product s) {
        try {
          if (test) {
            String exp= "UPDATE Store_Product SET p_name = ?,p_cat = ?, p_desc = ?, p_size = ?, p_uprice = ?, p_rprice = ? WHERE p_id = ?";
              PreparedStatement ps = con.prepareStatement(exp);
             
              ps.setString(1, s.getpName());
              ps.setString(2, s.getpCat());
 	          ps.setString(3, s.getpDesc());
 	          ps.setString(4, s.getpsize());
 	          ps.setFloat(5, s.getunitPrice());
 	          ps.setFloat(6, s.getregPrice());
 	          ps.setInt(7, s.getpID());
 	          int i = ps.executeUpdate();
	         if (i > 0)  return true; 
	         else  return false;
            }
            return false;
         } catch (Exception e2) {
        	System.out.println(e2.getMessage());
                return false;
       }
	}

	public boolean delete(Product s) {
        try {
	     if (test) {
              String exp="delete from Store_Product WHERE p_id = ?";
              PreparedStatement ps = con.prepareStatement(exp);
              ps.setInt(1, s.getpID());
              int i = ps.executeUpdate();
	         if (i > 0)   
	           return true;
	         else
	         	return false;
           }
              return false;
         } catch (Exception e2) {
        	System.out.println(e2.getMessage());
                return false;
       }
     }
	
	public Product find(int id) {
		Statement stmt = null;
        try {
	     if (test) {
              s = new Product();
              stmt = con.createStatement();
              String exp="select p_id, p_name, p_cat, p_desc, p_size, p_uprice, p_rprice from Store_Product WHERE p_id ="+id;
              ResultSet rs = stmt.executeQuery(exp);
              while (rs.next()) {
            	 s.setpID(rs.getInt("p_id"));
    	         s.setpName(rs.getString("p_name"));
    	         s.setpCat(rs.getString("p_cat"));
    	         s.setpDesc(rs.getString("p_desc"));
    	         s.setpsize(rs.getString("p_size"));
    	         s.setunitPrice(rs.getFloat("p_uprice"));
    	         s.setregPrice(rs.getFloat("p_rprice"));
              }
              return s;
            }
            return null;
        } catch (Exception e2) {
        	System.out.println(e2.getMessage());
           return null;
       }
	}
	
	public String display() {
		Statement stmt = null;
        String result="";
        try {
        	if (test) {
              s= new Product();
              stmt = con.createStatement();
              String exp ="select p_id, p_name, p_cat, p_desc, p_size, p_uprice, p_rprice from Store_Product";
              ResultSet rs = stmt.executeQuery(exp);
              while (rs.next()) {
            	 result+=rs.getInt("p_id")+" ";
            	 result+=rs.getString("p_name");
            	 result+=rs.getString("p_cat");
            	 result+=rs.getString("p_desc");
            	 result+=rs.getString("p_size");
            	 result+=rs.getFloat("p_uprice");
            	 result+=rs.getFloat("p_rprice");
              }
              return result;
        	}
            return null;
         } catch (Exception e2) {
        	System.out.println(e2.getMessage());
            return null;
         }
	}
}
