package BookShopPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookController {

	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata(String name,String price,String catagory,String qunetity,String description) {
		boolean isSuccess = false;
		try {
			//DB Connection Call
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "insert into book values(0,'"+name+"','"+price+"','"+catagory+"','"+qunetity+"','"+description+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
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
	
	//GetById
	public static List<BookModel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <BookModel> book = new ArrayList<>();
		
		try {
			//DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from book where id '"+ convertedID +"' ";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String price = rs.getString(3);
				String catagory = rs.getString(4);
				String qunetity = rs.getString(5);
				String description = rs.getString(6);
				
				BookModel bk = new  BookModel(id,name,price,catagory,qunetity,description);
				book.add(bk);
		
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return book;
	}
	//Get All Data 
	public static List<BookModel> getAllBook(){
		
		ArrayList <BookModel> books = new ArrayList<>();
		try {
			//DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from book ";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String price = rs.getString(3);
				String catagory = rs.getString(4);
				String qunetity = rs.getString(5);
				String description = rs.getString(6);
				
				BookModel bk = new  BookModel(id,name,price,catagory,qunetity,description);
				books.add(bk);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return books;
	}
	public static boolean updatedata(String id,String name,String price,String catagory,String qunetity,String description) {
		try {
			//DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//sql query
			String sql = "update book set name='"+name+"',price='"+price+"',catagory='"+catagory+"',qunetity='"+qunetity+"',description='"+description+"' where id= '"+ id +"' ";
			
			int rs = stmt.executeUpdate(sql);

	        if(rs > 0) {
	            isSuccess = true;
	        }
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	//delete Data 
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id); //convert id
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql = "delete from book where id='"+convID+"'"; //id is unique 
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
					
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
