package prj_2;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 관리자 댓글관리 DAO
 * @author user
 */
public class ManageMentCommDAO {

	/**
	 * 관리자 댓글관리DAO
	 * @return
	 */
	public List<AdminCommVO> commSearch(String id) throws SQLException{
		List<AdminCommVO> result=new ArrayList<AdminCommVO>();	
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		try{
		//1. JNDI 사용 객체 생성 
		//2. DataSource 얻기
		//3. Connection 얻기
			con=dbCon.getConn();
		// 쿼리문 생성객체 얻기
			StringBuilder selectCommSql=new StringBuilder();
			selectCommSql
			.append(" select COMMENT_NUM, USER_ID, PROD_COMMENTS, WRITE_DATE, PROD_NUM ")
			.append(" from 	PROD_COMMENT 																				   ")
			.append(" where	 USER_ID like '%'||?																		   ");
			
			pstmt=con.prepareStatement(selectCommSql.toString());		
			//바인드 변수 값 설정
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery(); //쿼리문을 실행하고 CURSOR의 제어권을 받는다.
				
				while(rs.next()) {
					//조회결과가 있다면 VO를 생성하여 조회결과를 저장 
					String userId=rs.getString("USER_ID");
					int commentNum=rs.getInt("COMMENT_NUM");
					Date writeDate=rs.getDate("WRITE_DATE");
					int prodNum=rs.getInt("PROD_NUM");
					String prodComments=rs.getString("PROD_COMMENTS");
					//같은 이름의 객체를 여러개 저장하기 위해서 
					result.add(new AdminCommVO(commentNum, prodNum, userId, prodComments, writeDate));
				}//end while				
			
		}finally {		
			dbCon.dbClose(rs, pstmt, con);  // 연결 끊기 
		}//end finally		
		
		return result;
	}//commSearch
	
}//ManageMentCommDAO
