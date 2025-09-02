package UserPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import BookShopPackage.DBConnection;

public class UserController {
	//Connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//Insert Data Function
		public static boolean insertdata(String name,String gmail,String password,String phone) {
			boolean isSuccess = false;
			try {
				//DB Connection Call
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				
				//sql query
				String sql = "insert into user values(0,'"+name+"','"+gmail+"','"+password+"','"+phone+"')";
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
		//Login validate 
		public static List<UserModel> loginValidation(String gmail,String password){
			ArrayList<UserModel> user = new ArrayList<>();
			
			try {
				//DB connection call
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from user where"+" gmail= '"+gmail+"' and password= '"+password+"' ";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String pass = rs.getString(4);
					String phone = rs.getString(5);
					
					UserModel u = new UserModel(id,name,email,pass,phone);
					user.add(u);				
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return user;
		}

}
