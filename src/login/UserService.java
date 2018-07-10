package login;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class UserService {

	public User login(User user) throws SQLException{
		
		DriverManager.registerDriver(new Driver());
		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/community", "root", "admin");
		Statement sta=(Statement) con.createStatement();
		String sql = "select * from login where id='" + user.getId()
		+ "' and pwd='" + user.getPwd() + "'";
		ResultSet rs =sta.executeQuery(sql);
		if (rs.next()) { // 如果可以next,代表查找到了这个用户的信息，就将结果集中的信息封装到User对象中.
				User u = new User();
				u.setId(rs.getInt("id"));
				u.setPwd(rs.getString("pwd"));
				u.setIdentity(rs.getString("identity"));
				u.setName(rs.getString("name"));
				return u;
			}
			rs.close();
			sta.close();
			con.close();
			
		return null;
	}

}
