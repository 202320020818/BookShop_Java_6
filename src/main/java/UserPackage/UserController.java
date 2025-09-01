package UserPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

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
		

}
