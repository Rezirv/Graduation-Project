 package information;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import activity.Activity;
import notice.DataSourceUtils;

public class InformationDao {
	public List<Information> findAll() throws SQLException {
		String sql = "select * from community";

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<Information>(Information.class));
	}

	public void insert(Application_cache ac) throws SQLException {
		String sql = "insert into application_cache values(?,?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, ac.getId(),ac.getTel(),ac.getEmail(),ac.getPosition(),ac.getContent(),ac.getName(),ac.getComunityname());
	}
	

}
