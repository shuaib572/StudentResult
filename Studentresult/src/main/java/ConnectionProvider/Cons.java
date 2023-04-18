package ConnectionProvider;

import java.sql.*;

public class Cons {
	public static Connection getCon()
	{
		
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:orcl","c##shuaib","shuaib");
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	public static void main(String[] args) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:orcl","c##shuaib","shuaib");
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery("select RollNo,sname,s1,s2,s3,s4,s5 from r1");
			while(rs.next())
			{
				System.out.println(rs.getInt(11));
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
