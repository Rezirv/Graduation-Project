package activity;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import notice.DataSourceUtils;


public class ActivityDao {

	public List<Activity> display() throws SQLException {
		String sql = "select * from activity";

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<Activity>(Activity.class));
	}

	public Activity findByTheme(String id) throws SQLException {
		String sql = "select * from activity where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<Activity>(Activity.class), id);
	}

	public void insert(Comment c) throws SQLException {
		String sql = "insert into comment(theme,name,comment,community) values(?,?,?,?)";

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		runner.update(sql, c.getTheme(), c.getName(), c.getComment(),c.getCommunity());
	}

}
