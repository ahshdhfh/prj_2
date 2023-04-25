package prj_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {

	/**
	 * 관리자 로그인 메소드
	 * @param loginVO 관리자 아이디,비번 VO
	 * @return
	 */
	public boolean loginCheck(AdminVO aVO) throws SQLException {		
		boolean result=false;		//로그인 결과값 반환하는 변수
		
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
			StringBuilder selectAdminSql=new StringBuilder();
			selectAdminSql
			.append(" select * from admin_member where id=? and password=?  ");
			
			pstmt=con.prepareStatement(selectAdminSql.toString());
			
			//바인드 변수 값 설정
			pstmt.setString(1,aVO.getAdminId());
			pstmt.setString(2,aVO.getAdminPassword());			
			
			rs=pstmt.executeQuery(); //쿼리문을 실행하고 CURSOR의 제어권을 받는다.
			
			if(rs.next()) { //검색된 레코드가 있니?
				result=true; //검색된게 있으므로 아이디/패스워드가 일치그러므로 true반환
			}//end if 
			
		}finally {		
			dbCon.dbClose(rs, pstmt, con);  // 연결 끊기 
		}//end finally
		
		return result; //로그인 결과 값 반환
	}//loginCheck
	
}//class
