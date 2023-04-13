package prj_2;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DbConnection {
	private static DbConnection dbcon;
	
	@SuppressWarnings("unused")
	public static DbConnection getInstance() {
		if(dbcon==null) {
			dbcon = new DbConnection();
		}//end if
		
		return dbcon;
	}//getInstance
	
	public Connection getConn() throws SQLException {
		Connection con = null;
		//1. JNDI 사용 객체를 생성
		try {
			Context ctx = new InitialContext();
			//2. JNDI로 찾아낸 DBCP에서 Data source를 얻자
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/prjDbcp");
			//3. Connection을 얻자
			con=ds.getConnection();
			
		} catch (NamingException e) {
			e.printStackTrace();
		}//end catch
		
		return con;
	}//getConn

	public void dbClose(ResultSet rs, Statement stmt, Connection con) throws SQLException {
		
		try {
			if(rs!=null) {rs.close();}
			if(stmt!=null) {stmt.close();}
			
		} finally {
			if(con!=null) {con.close();}
		}//end finally
		
	}//dbClose
	
}//class
