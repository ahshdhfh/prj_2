package prj_2;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DashBoardDAO {

	/**
	 * 오늘 총 로그인 수 
	 * @param loginDate
	 * @return
	 */
	public int totalVisit() throws SQLException {	
		int result=0;
				
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
			.append(" select  count(*) as count						")
			.append(" from 	USERS		 			  					")
			.append(" where	 trunc(login_date)=trunc(sysdate)");
			
			pstmt=con.prepareStatement(selectCommSql.toString());		
			
			rs=pstmt.executeQuery(); //쿼리문을 실행하고 CURSOR의 제어권을 받는다.
			
			if(rs.next()) {
				result=rs.getInt("count");
			}
			
		}finally {		
			dbCon.dbClose(rs, pstmt, con);  // 연결 끊기 
		}//end finally			
		
		return result;
	}//totalVisit
	
	
	/**
	 * 총 회원수
	 * @return
	 */
	public int memberCnt() throws SQLException {
		int result=0;
			
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		DbConnection dbCon = DbConnection.getInstance();

		try {
				//1. JNDI 사용 객체 생성 
				//2. DataSource 얻기
				//3. Connection 얻기
			con = dbCon.getConn();
				// 쿼리문 생성객체 얻기
			StringBuilder selectCommSql = new StringBuilder();
			selectCommSql
					.append(" select  count(*) as count			")
					.append(" from 	USERS		 			  		")
					.append(" where	 delete_date is null 		");

			pstmt = con.prepareStatement(selectCommSql.toString());

			rs = pstmt.executeQuery(); // 쿼리문을 실행하고 CURSOR의 제어권을 받는다.

			if (rs.next()) {
				result = rs.getInt("count");
			}

		} finally {
			dbCon.dbClose(rs, pstmt, con); // 연결 끊기
		} // end finally
		
		return result;
	}//memberCmt
	
	
	/**
	 * 신규가입 회원 수
	 * @return
	 */
	public int newMemberCnt() throws SQLException {
		int result=0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		DbConnection dbCon = DbConnection.getInstance();

		try {
				//1. JNDI 사용 객체 생성 
				//2. DataSource 얻기
				//3. Connection 얻기
			con = dbCon.getConn();
				// 쿼리문 생성객체 얻기
			StringBuilder selectCommSql = new StringBuilder();
			selectCommSql
					.append(" select  count(*) as count								")
					.append(" from 	USERS		 			  							")
					.append(" where	 trunc(create_date)=trunc(sysdate) 		");

			pstmt = con.prepareStatement(selectCommSql.toString());

			rs = pstmt.executeQuery(); // 쿼리문을 실행하고 CURSOR의 제어권을 받는다.

			if (rs.next()) {
				result = rs.getInt("count");
			}

		} finally {
			dbCon.dbClose(rs, pstmt, con); // 연결 끊기
		} // end finally
		
		return result;
	}//newMemberCnt
	
	
	/**
	 * 오늘 탈퇴환 회원 수
	 * @return
	 */
	public int withdrawalMembers() throws SQLException {
		int result=0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		DbConnection dbCon = DbConnection.getInstance();

		try {
				//1. JNDI 사용 객체 생성 
				//2. DataSource 얻기
				//3. Connection 얻기
			con = dbCon.getConn();
				// 쿼리문 생성객체 얻기
			StringBuilder selectCommSql = new StringBuilder();
			selectCommSql
					.append(" select  count(*) as count								")
					.append(" from 	USERS		 			  							")
					.append(" where	 trunc(delete_date)=trunc(sysdate) 		");

			pstmt = con.prepareStatement(selectCommSql.toString());

			rs = pstmt.executeQuery(); // 쿼리문을 실행하고 CURSOR의 제어권을 받는다.

			if (rs.next()) {
				result = rs.getInt("count");
			}

		} finally {
			dbCon.dbClose(rs, pstmt, con); // 연결 끊기
		} // end finally	
		
		return result;
	}//withdrawalMembers
	
	
	/**
	 * 오늘 거래완료 수
	 * @return
	 */
	public int tradingStatusCnt() throws SQLException {
		int result=0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		DbConnection dbCon = DbConnection.getInstance();

		try {
				//1. JNDI 사용 객체 생성 
				//2. DataSource 얻기
				//3. Connection 얻기
			con = dbCon.getConn();
				// 쿼리문 생성객체 얻기
			StringBuilder selectCommSql = new StringBuilder();
			selectCommSql
					.append(" select  count(*) as count																					")
					.append(" from 	PRODUCT_STATUS		 			  																")
					.append(" where	 Product_status='판매완료' and trunc(transaction_date)=trunc(sysdate) 		");

			pstmt = con.prepareStatement(selectCommSql.toString());

			rs = pstmt.executeQuery(); // 쿼리문을 실행하고 CURSOR의 제어권을 받는다.

			if (rs.next()) {
				result = rs.getInt("count");
			}

		} finally {
			dbCon.dbClose(rs, pstmt, con); // 연결 끊기
		} // end finally	
		
		
		return result;
	}//tradingStatusCnt
	
	
	/**
	 * 거래현황
	 * @return
	 */
	public Integer[] tradingStatus() throws SQLException {	
		Integer[] result=new Integer[7];
		int cnt=0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		DbConnection dbCon = DbConnection.getInstance();

		try {
				//1. JNDI 사용 객체 생성 
				//2. DataSource 얻기
				//3. Connection 얻기
			con = dbCon.getConn();
				// 쿼리문 생성객체 얻기
			StringBuilder selectCommSql = new StringBuilder();
			selectCommSql
					.append(" select distinct TRANSACTION_DATE,COUNT(*) OVER(PARTITION BY TRANSACTION_DATE,PRODUCT_STATUS) AS count, PRODUCT_STATUS 	")
					.append(" from (	SELECT TO_CHAR(TRANSACTION_DATE,'YYYY-MM-DD') AS TRANSACTION_DATE, PROD_NUM, PRODUCT_STATUS							")
					.append("				FROM PRODUCT_STATUS																																						")
					.append("				WHERE PRODUCT_STATUS = '판매완료' AND TRANSACTION_DATE >= SYSDATE - 7  ) 																																	");																																		;

			pstmt = con.prepareStatement(selectCommSql.toString());

			rs = pstmt.executeQuery(); // 쿼리문을 실행하고 CURSOR의 제어권을 받는다.

			if (rs.next()) {
				result[cnt] = rs.getInt("count");
				cnt++;
			}
			
		} finally {
			dbCon.dbClose(rs, pstmt, con); // 연결 끊기
		} // end finally	
		
		return result;
	}//tradingStatus
	 
	
	/**
	 * 카테고리별 상품 수
	 * @return
	 */
	public CategoryCntVO categoryCnt() throws SQLException{
		CategoryCntVO result=null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		DbConnection dbCon = DbConnection.getInstance();

		try {
				//1. JNDI 사용 객체 생성 
				//2. DataSource 얻기
				//3. Connection 얻기
			con = dbCon.getConn();
				// 쿼리문 생성객체 얻기
			StringBuilder selectCommSql = new StringBuilder();
			selectCommSql
					.append(" select SUM(CASE WHEN CATEGORY_NUM = 1 THEN 1 ELSE 0 END) AS cycleCnt, 	")
					.append(" SUM(CASE WHEN CATEGORY_NUM = 2 THEN 1 ELSE 0 END) AS clothCnt,			")
					.append(" SUM(CASE WHEN CATEGORY_NUM = 3 THEN 1 ELSE 0 END) AS partsCnt, 			")
					.append(" SUM(CASE WHEN CATEGORY_NUM = 4 THEN 1 ELSE 0 END) AS suppliesCnt		")
					.append(" from PRODUCT p, PRODUCT_STATUS ps 														")
					.append(" where p.PROD_NUM=ps.PROD_NUM and PRODUCT_STATUS='판매중'				");

			pstmt = con.prepareStatement(selectCommSql.toString());

			rs = pstmt.executeQuery(); // 쿼리문을 실행하고 CURSOR의 제어권을 받는다.

			if (rs.next()) {
				int cycleCnt 		= rs.getInt("cycleCnt");
				int clothCnt 		= rs.getInt("clothCnt");
				int partsCnt 		= rs.getInt("partsCnt");
				int suppliesCnt	= rs.getInt("suppliesCnt");
				
				result=new CategoryCntVO(cycleCnt, clothCnt, partsCnt, suppliesCnt);
			}

		} finally {
			dbCon.dbClose(rs, pstmt, con); // 연결 끊기
		} // end finally	
		
		return result;
	}//categoryCnt
	
	
	/**
	 * 동별 상품현황
	 * @return
	 */
	public Integer[] dongCnt() throws SQLException{
		Integer[] result=new Integer[14];
		int cnt=0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		DbConnection dbCon = DbConnection.getInstance();

		try {
				//1. JNDI 사용 객체 생성 
				//2. DataSource 얻기
				//3. Connection 얻기
			con = dbCon.getConn();
				// 쿼리문 생성객체 얻기
			StringBuilder selectCommSql = new StringBuilder();
			selectCommSql
					.append(" select aa.AREA_NAME, NVL(count,0) count	 																													")
					.append(" from (select aa.AREA_NAME, count(p.prod_num) as count																									")
					.append("			from PRODUCT p, PRODUCT_STATUS ps, ACTIVITY_AREA aa																						")
					.append("	   		where p.PROD_NUM=ps.PROD_NUM and aa.ACTI_AREA_NUM=p.ACTI_AREA_NUM and PRODUCT_STATUS='판매중'		")																															
					.append("	   		group by aa.AREA_NAME) ab, ACTIVITY_AREA aa																										")																															
					.append("where aa.AREA_NAME=ab.AREA_NAME(+)   																														")																															;

			pstmt = con.prepareStatement(selectCommSql.toString());

			rs = pstmt.executeQuery(); // 쿼리문을 실행하고 CURSOR의 제어권을 받는다.

			if (rs.next()) {
				result[cnt] = rs.getInt("count");
				cnt++;
			}
			
		} finally {
			dbCon.dbClose(rs, pstmt, con); // 연결 끊기
		} // end finally	
		
		return result;
	}//dongCnt
	
	
	/**
	 * 신규&탈퇴회원
	 * @return
	 */
	public List<MemberCntVO> newAndWithdrawallCnt() throws SQLException{
		List<MemberCntVO> result=new ArrayList<MemberCntVO>();
		
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
			.append(" select 	TO_CHAR(CREATE_DATE,'yyyy-mm') as month, 								")
			.append(" 				count(TO_CHAR(CREATE_DATE,'yyyy-mm')) as CREATE_DATE ,  		")
			.append(" 				count(TO_CHAR(DELETE_DATE,'yyyy-mm')) as DELETE_DATE  			")
			.append(" FROM 	USERS 		 			  																	")
			.append(" where		group by TO_CHAR(CREATE_DATE,'yyyy-mm')	 							");
			
			pstmt=con.prepareStatement(selectCommSql.toString());		
			
			rs=pstmt.executeQuery(); //쿼리문을 실행하고 CURSOR의 제어권을 받는다.
			
			if(rs.next()) {
				int crMember=rs.getInt("CREATE_DATE");
				int deMember=rs.getInt("DELETE_DATE");
				result.add(new MemberCntVO(crMember, deMember));
			}
			
		}finally {		
			dbCon.dbClose(rs, pstmt, con);  // 연결 끊기 
		}//end finally		
		
		
		return result;
	}//newAndWithdrawallCnt
	
	
	/**
	 * 월별총회원수
	 * @return
	 */
	public List<Integer> monthTotalCnt() throws SQLException{
		List<Integer> result=new ArrayList<Integer>();
		
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
			.append(" select  TO_CHAR(CREATE_DATE,'yyyy-mm') AS Month,																				")
			.append(" 			COUNT(*)+NVL(LAG(COUNT(*)) OVER (ORDER BY TO_CHAR(CREATE_DATE,'yyyy-mm')),0) as count	 	")
			.append(" FROM USERS 																																			")
			.append(" where DELETE_DATE is null 																														")
			.append(" GROUP BY TO_CHAR(CREATE_DATE,'yyyy-mm') 																							");
			
			
			pstmt=con.prepareStatement(selectCommSql.toString());		
			
			rs=pstmt.executeQuery(); //쿼리문을 실행하고 CURSOR의 제어권을 받는다.
			
			if(rs.next()) {
				result.add(rs.getInt("count"));
			}
			
		}finally {		
			dbCon.dbClose(rs, pstmt, con);  // 연결 끊기 
		}//end finally		
		
		return result;
	}//monthTotalCnt
	
	
	
}//class
