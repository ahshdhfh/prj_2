package prj_2;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 관리자 회원관리 DAO
 * @author user
 */
public class ManageMentMemberDAO {

	/**
	 * 테이블 / 회원 검색
	 * @param id 아이디
	 * @return
	 */
	public List<AdminMemberVO> memberSearch(String id) throws SQLException {
		List<AdminMemberVO> result=new ArrayList<AdminMemberVO>();
			
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
			StringBuilder selectUserSql=new StringBuilder();
			selectUserSql
			.append(" select user_id, nickname, addr, detailed_addr, create_date, AREA_NAME 	")
			.append(" from users us, ACTIVITY_AREA aa															")
			.append(" where	 aa.ACTI_AREA_NUM=us.ACTI_AREA_NUM and user_id like '%'||?||'%' 	   	");
			
			pstmt=con.prepareStatement(selectUserSql.toString());		
			//바인드 변수 값 설정
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery(); //쿼리문을 실행하고 CURSOR의 제어권을 받는다.
				
				while(rs.next()) {
					//조회결과가 있다면 VO를 생성하여 조회결과를 저장 
					String userId=rs.getString("user_id");
					String nickname=rs.getString("nickname");
					String addr=rs.getString("addr");
					String detailedAddr=rs.getString("detailed_addr");
					String areaName=rs.getString("AREA_NAME");
					Date createDate=rs.getDate("create_date"); 
					//같은 이름의 객체를 여러개 저장하기 위해서 
					result.add(new AdminMemberVO(userId, nickname, addr, detailedAddr, createDate, areaName));
				}//end while				
				
			
		}finally {		
			dbCon.dbClose(rs, pstmt, con);  // 연결 끊기 
		}//end finally
				
		return result;
	}//memberSearch
	
}//ManageMentMemberDAO
