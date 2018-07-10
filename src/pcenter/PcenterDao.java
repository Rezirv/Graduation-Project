package pcenter;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import activity.Activity;
import notice.DataSourceUtils;
import registered.application;

public class PcenterDao {

	public Pcenter find(String name) throws SQLException {
		String sql = "select * from pcenter where name=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<Pcenter>(Pcenter.class), name);
	}

	public List<application> findcomunity(String name) throws SQLException {
		String sql = "select * from application where name=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<application>(application.class), name);
	}


}
