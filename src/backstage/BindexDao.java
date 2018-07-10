package backstage;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import activity.Comment;
import information.Information;
import notice.DataSourceUtils;
import notice.Notice;
import registered.Activity_cache;
import registered.application;

public class BindexDao {

	public long getMesssgeNum() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		long obj = (Long) runner.query("select count(*) from comment where reply is null",new ScalarHandler());
		return obj;
	}

	public long getActivityNum() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		long obj = (Long) runner.query("select count(*) from application_cache",new ScalarHandler());
		return obj;
	}

	public void insertNotice(Notice notice) throws SQLException {
		String sql = "insert into notice values(?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql,notice.getNoticetheme(),notice.getComunity(),notice.getTime(),notice.getLocation(),notice.getMore());
		
	}

	public void insertCommunity(Information inf) throws SQLException {
		String sql = "insert into community(comunityname,logopath,adminor,resume) values(?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql,inf.getComunityname(),inf.getLogopath(),inf.getAdminor(),inf.getResume());
		
	}

	public List<Activity_cache> findAll() throws SQLException {
		String sql = "select * from activity_application";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<Activity_cache>(Activity_cache.class));
	}

	public void delById(String id) throws SQLException {
		String sql = "delete from activity_application where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, id);
		
	}

	public void agreeInsert(Activity_cache act) throws SQLException {
		String sql = "insert into activity(theme,community,location,date,object,content) values(?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql,act.getTheme(),act.getCommunity(),act.getLocation(),act.getDate(),act.getObject(),act.getContent());
		
	}

	public List<application> findApplication() throws SQLException {
		String sql = "select * from application";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<application>(application.class));
	}

	public List<Comment> findAllComment() throws SQLException {
		String sql = "select * from comment where reply is null";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<Comment>(Comment.class));
	}

	public void insertComment(String commentid,String reply, String replyname) throws SQLException {
		String sql = "update comment set reply=?,replyname=? where commentid=?";

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		runner.update(sql, reply,replyname,commentid);
	}
	}


