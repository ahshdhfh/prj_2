package prj_2;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 댓글 문의&답변과 수정, 삭제, 채택 기능을 구현한 클래스
 * @author user
 */
public class RegisterCommentDAO {
	
	/**
	 * 댓글 작성 메소드
	 */
	public void insertCom(CommVO cVO)throws SQLException {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		try {
		//1. JNDI 사용객체 생성
		//2. DateSource를 얻어주기
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			StringBuilder insertComm=new StringBuilder();
			insertComm
			.append("insert into PROD_COMMENT(COMMENT_NUM,USER_ID,PROD_COMMENTS,WRITE_DATE,PROD_NUM) ")
			.append("values(?,?,?,sysdate,GANGNAMKONG.SEQ_PRODUCT_SEQ.CURRVAL)"			);
			
			pstmt=con.prepareStatement(insertComm.toString());
		//5. 바인드 변수 값 설정
			pstmt.setInt(1,cVO.getCommNum());
			pstmt.setString(2,cVO.getUserId());
			pstmt.setString(3,cVO.getProdComments());
			
			pstmt.executeQuery();
		//6. 쿼리문 수행 후 결과 얻기
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);		
		}//end finally
	}//insertCom
	
	/**
	 * 댓글을 수정하는 메소드
	 */
	public void updateComm(CommVO cVO)throws SQLException {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		
		try {
		//1. JNDI 사용객체 생성
		//2. DateSource를 얻어주기
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			StringBuilder updateCom=new StringBuilder();
			updateCom
			.append("		update PROD_COMMENT 	")
			.append("		set  	 PROD_COMMENTS=?	")
			.append("		where  COMMENT_NUM=? 	");
			
			pstmt=con.prepareStatement(updateCom.toString());
		//5. 바인드 변수 값 설정
			pstmt.setString(1, cVO.getProdComments());
			pstmt.setInt(2, cVO.getCommNum());
			
			pstmt.executeQuery();
		//6. 쿼리문 수행 후 결과 얻기
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);	
		}//end finally
	}//updateComm
	
	/**
	 * 댓글을 삭제하는 메소드
	 */
	public void deleteComm(CommVO cVO)throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		
		try {
		//1. JNDI 사용객체 생성
		//2. DateSource를 얻어주기
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			String deleteCom="delete from PROD_COMMENT where COMMENT_NUM=?";
			
			pstmt=con.prepareStatement(deleteCom);
			
			//5. 바인드 변수 값 설정
			pstmt.setInt(1, cVO.getCommNum());
			//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeQuery();
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);	
		}//end finally
	}//deleteComm
	
	//===========================답변글 메소드==========================================//
	/**
	 * 답변글 작성 메소드
	 */
	public void insertReply(ReplyCommVO rcVO)throws SQLException {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용객체 생성
			//2. DateSource를 얻어주기
			//3. Connection 얻기
			con=dbCon.getConn();
			//4. 쿼리문 생성객체 얻기
			StringBuilder insertComm=new StringBuilder();
			insertComm
			.append("insert into REPLY_COMMENT(REPLY_NUM, REPLY_COMMENT, WRITE_DATE, COMMENT_NUM, USER_ID ) ")
			.append("values(?,?,sysdate,?,?)"			);
			
			pstmt=con.prepareStatement(insertComm.toString());
			//5. 바인드 변수 값 설정
			pstmt.setInt(1,rcVO.getRepNum());
			pstmt.setString(2,rcVO.getReplyCom());
			pstmt.setInt(3,rcVO.getcommNum());
			pstmt.setString(4,rcVO.getUserId());
			
			pstmt.executeQuery();
			//6. 쿼리문 수행 후 결과 얻기
		}finally {
			//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);		
		}//end finally
	}//insertCom
	
	/**
	 * 답변글을 수정하는 메소드
	 */
	public void updateReply(ReplyCommVO rcVO)throws SQLException {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		
		try {
			//1. JNDI 사용객체 생성
			//2. DateSource를 얻어주기
			//3. Connection 얻기
			con=dbCon.getConn();
			//4. 쿼리문 생성객체 얻기
			StringBuilder updateCom=new StringBuilder();
			updateCom
			.append("		update 	REPLY_COMMENT 											")
			.append("		set     REPLY_COMMENT=?												")
			.append("		where  	REPLY_NUM=? and COMMENT_NUM=? 		");

			pstmt=con.prepareStatement(updateCom.toString());
			//5. 바인드 변수 값 설정
		
			pstmt.setString(1, rcVO.getReplyCom());
			pstmt.setInt(2, rcVO.getRepNum());
			pstmt.setInt(2, rcVO.getcommNum());
			
			pstmt.executeQuery();
			//6. 쿼리문 수행 후 결과 얻기
		}finally {
			//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);	
		}//end finally
	}//updateComm
	
	/**
	 * 답변글을 삭제하는 메소드
	 */
	public void deleteReply(ReplyCommVO rcVO)throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		
		try {
		//1. JNDI 사용객체 생성
		//2. DateSource를 얻어주기
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			String deleteCom="delete	from    REPLY_COMMENT	where  	REPLY_NUM=?	and COMMENT_NUM=?";
			
			pstmt=con.prepareStatement(deleteCom);
			
			//5. 바인드 변수 값 설정
			pstmt.setInt(1, rcVO.getRepNum());
			pstmt.setInt(2, rcVO.getcommNum());
			//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeQuery();
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);	
		}//end finally
	}//deleteComm
	
	
	
	
	
	/**
	 * 댓글을 채택하는 메소드
	 * 관심목록,구매목록,판매목록,상품상태 업데이트 필요(4개 필요).
	 */
	public void updateTablePrd(ProdConditionVO pcVO) throws SQLException {
	    Connection con = null;
	    PreparedStatement pstmt = null;

	    DbConnection dbCon = DbConnection.getInstance();
	    try {
	        con = dbCon.getConn();

	        // OnSaleListVO 테이블 업데이트
	        StringBuilder updateOnSaleList = new StringBuilder();
	        updateOnSaleList
	        .append("insert into PURCHASE_LIST(PROD_NUM,SELLER_ID, USER_ID) values(?,?,?)");
	        pstmt = con.prepareStatement(updateOnSaleList.toString());
			pstmt.setInt(1,pcVO.getProdNum());
			pstmt.setString(2,pcVO.getSellerId());
			pstmt.setString(3,pcVO.getUserId());
	        pstmt.executeQuery();

	        // SoldVO 테이블 업데이트
	        StringBuilder updateSoldList = new StringBuilder();
	        updateSoldList
	        .append("insert into SALES_LIST(PROD_NUM,SELLER_ID, USER_ID) values(?,?,?)");
	        pstmt = con.prepareStatement(updateSoldList.toString());
			pstmt.setInt(1,pcVO.getProdNum());
			pstmt.setString(2,pcVO.getSellerId());
			pstmt.setString(3,pcVO.getUserId());
			pstmt.executeQuery();

	        // interestListVO 테이블 업데이트
	        StringBuilder updateInterestList = new StringBuilder();
	        pstmt = con.prepareStatement(updateInterestList.toString());
	        updateInterestList
	        .append("delete from INTEREST_LIST where PROD_NUM=?");
	        pstmt.setInt(1, pcVO.getProdNum());
	        
	        pstmt.executeQuery();

	    } finally {
	        dbCon.dbClose(null,pstmt, con);
	    }
	}//updateTablePrd
	
	
		/**
		 * 상품에 달린 댓글의 리스트를 가져오는 메소드
		 * @param pclVO
		 * @throws SQLException
		 */
		public List<SetCommVO> setCommList(int prodNum)throws SQLException {
		   List<SetCommVO> list= new ArrayList<SetCommVO>();
			Connection con = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs=null;
		    
		    DbConnection dbCon = DbConnection.getInstance();
		    try {
		        con = dbCon.getConn();
		    //쿼리문 생성객체 작성 필요.
		        StringBuilder commList = new StringBuilder();
		        
//		        SELECT p.COMMENT_NUM, p.USER_ID, p.PROD_COMMENTS, p.WRITE_DATE, p.PROD_NUM,
//		        r.REPLY_NUM, r.REPLY_COMMENT, r.WRITE_DATE, r.COMMENT_NUM, r.USER_ID
//		 FROM   PROD_COMMENT p
//		        inner JOIN REPLY_COMMENT r
//		          ON p.COMMENT_NUM = r.COMMENT_NUM
//		 where 	p.prod_num='7';
		        
		        
		        commList
		        .append("	select p.comment_num , p.user_id p_user_id,  p.prod_comments ,												")
		        .append( "   p.write_date p_write_date, p.prod_num , 																						")
		        .append("	r.reply_num, r.reply_comment, r.write_date r_write_date, r.user_id	r_user_id								")
		        .append("	FROM   PROD_COMMENT p, REPLY_COMMENT r																		")
		        .append("	where 	p.prod_num=? and p.COMMENT_NUM = r.COMMENT_NUM										");

		        
		        pstmt=con.prepareStatement(commList.toString());
		        pstmt.setInt(1, prodNum);
		        
		        rs=pstmt.executeQuery();

		        SetCommVO scVO=null;
		        //public SetCommVO(String commId, String replyId,
		        //String prodComment, String replyComment,
		        //int commNum, int prodNum,
				//int replyNum, Date comWriteDate, Date replyWriteDate)
		        while(rs.next()) {
					/* scVO= */
							/*
							 * new SetCommVO(rs.getString("p_user_id"), rs.getString("r_user_id"),
							 * rs.getString("prod_comments"), rs.getString("reply_comment"),
							 * rs.getInt("comment_num"), rs.getInt("prod_num"), rs.getInt("reply_num"),
							 * rs.getDate("p_write_date"), rs.getDate("r_write_date"));
							 */
		     /*   	list.add(scVO);*/
		        }//end while
				/*
				 * while(rs.next()) { // 댓글 정보 처리 CommVO comm = new CommVO();
				 * comm.setUserId(rs.getString("user_id"));
				 * comm.setCommNum(rs.getInt("comment_num"));
				 * comm.setProdComments(rs.getString("prod_comments"));
				 * comm.setWriteDate(rs.getDate("write_date"));
				 * 
				 * ReplyCommVO repCom= new ReplyCommVO(); }
				 */
		         
		    } finally {
		        dbCon.dbClose(rs,pstmt, con);
		    }//end finally
		    return list;
		}//setCommList
		
}//class
