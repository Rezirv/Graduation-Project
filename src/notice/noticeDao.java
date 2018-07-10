package notice;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import notice.DataSourceUtils;

public class noticeDao {

	public List<Notice> findAll() throws SQLException {
		String sql = "select * from notice";

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<Notice>(Notice.class));
	}

}
