package registered;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import activity.Activity;
import information.Application_cache;
import information.Information;
import notice.DataSourceUtils;

public class RegisteredDao {

	public Information findbyadminor(String adminor) throws SQLException {
		String sql = "select * from community where adminor=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<Information>(Information.class),adminor);
	}

	public void insert(Activity_cache ac) throws SQLException {
		String sql = "insert into activity_application(theme,community,location,date,object,content) values(?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql,ac.getTheme(),ac.getCommunity(),ac.getLocation(),ac.getDate(),ac.getObject(),ac.getContent());
	}

	public application findc(String name) throws SQLException {
		String sql = "select * from application where name=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<application>(application.class), name);
	}

	public List<application> findAll(String cn) throws SQLException {
		String sql = "select * from application where comunityname=? ";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<application>(application.class),cn);
	}

	public List<Application_cache> findmessage(String com) throws SQLException {
		String sql = "select * from application_cache where comunityname=? ";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<Application_cache>(Application_cache.class),com);
	}

	public void delete(String id) throws SQLException {
		String sql = "delete from application_cache where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, id);
		
	}

	public void update(application app) throws SQLException {
		String sql = "insert into application values(?,?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql,app.getId(),app.getTel(),app.getEmail(),app.getPosition(),app.getContent(),app.getName(),app.getComunityname());
		
	}

}
