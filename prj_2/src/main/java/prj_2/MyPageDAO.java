package prj_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class MyPageDAO {
	  public List<PurchaseListVO> selectPurchase(String sessionId)throws SQLException{
	  List<PurchaseListVO> purchase=new ArrayList<PurchaseListVO>();
		
		DbConnection dbCon=DbConnection.getInstance();
		//1. JNDI 사용객체 생성
		//2. DataSource 얻기
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			StringBuilder selectOnSale=new StringBuilder();
			selectOnSale
			.append("	select l.prod_num, p.prod_name, l.SELLER_ID, s.transaction_date")
			.append("	from purchase_list l, product_status s, product p")
			.append("	where p.prod_num=s.prod_num and s.prod_num=l.prod_num and s.product_status='판매완료' and l.user_id=? ")
			.append("	order by transaction_date desc");
			
			pstmt=con.prepareStatement(selectOnSale.toString());
			
		//5. 바인드 변수 값 설정
		pstmt.setString(1, sessionId);
		//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				purchase
				.add(new PurchaseListVO(rs.getInt("prod_Num"),rs.getString("prod_Name"),rs.getString("seller_Id"),rs.getDate("transaction_Date")));
			}//end while
		}finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
	
	 return purchase; 
	 }//selectPurchase 구매내역
	  
	  
	 public List<OnSaleListVO> selectOnSale(String userId)throws SQLException{
	  List<OnSaleListVO> onSale=new ArrayList<OnSaleListVO>();
	  
	  DbConnection dbCon=DbConnection.getInstance();
		//1. JNDI 사용객체 생성
		//2. DataSource 얻기
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			StringBuilder selectPurchaseList=new StringBuilder();
			selectPurchaseList
			.append("	select P.PROD_NUM, P.PROD_NAME, P.INPUT_DATE, S.PRODUCT_STATUS")
			.append("	from PRODUCT P, PRODUCT_STATUS S")
			.append("	where PRODUCT_STATUS='판매중' AND S.PROD_NUM=P.PROD_NUM AND USER_ID=?")
			.append("	order by input_date desc ");
			
			pstmt=con.prepareStatement(selectPurchaseList.toString());
		//5. 바인드 변수 값 설정
		pstmt.setString(1, userId);
		//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				onSale
				.add(new OnSaleListVO(rs.getInt("prod_Num"),rs.getString("prod_Name"),rs.getDate("input_Date")));
			}//end while
		}finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
	
	  return onSale; 
	  }//selectOnSale 판매목록
	 
	  
	public List<SoldVO> selectSold(String purchaserId)throws SQLException{
		List<SoldVO> sold=new ArrayList<SoldVO>();
		
		DbConnection dbCon=DbConnection.getInstance();
		//1. JNDI 사용객체 생성
		//2. DataSource 얻기
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			StringBuilder selectSold=new StringBuilder();
			selectSold
			.append("	select L.PROD_NUM, P.PROD_NAME, L.PURCHASER_ID, S.TRANSACTION_DATE")
			.append("	from SALES_LIST L, PRODUCT P, PRODUCT_STATUS S")
			.append("	where p.prod_num=s.prod_num and s.prod_num=l.prod_num and s.product_status='판매완료' and L.USER_ID=?")
			.append("	order by transaction_date desc");
			
			pstmt=con.prepareStatement(selectSold.toString());
		//5. 바인드 변수 값 설정
		pstmt.setString(1, purchaserId);
		//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				sold
				.add(new SoldVO(rs.getInt("prod_Num"),rs.getString("prod_Name"),rs.getString("purchaser_Id"),rs.getDate("transaction_Date")));
			}//end while
		}finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
	
		return sold; 
	}//selectSold 판매완료
	 
	
	 public List<InterestListVO> selectInterest(String userId)throws SQLException{
			
			List<InterestListVO> interest=new ArrayList<InterestListVO>();
		
			DbConnection dbCon=DbConnection.getInstance();
			//1. JNDI 사용객체 생성
			//2. DataSource 얻기
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try {
			//3. Connection 얻기
				con=dbCon.getConn();
			//4. 쿼리문 생성객체 얻기
				StringBuilder selectInterest=new StringBuilder();
				selectInterest
				.append("	select prod_img, prod_name, prod_num, price, checked_date from ( ")
				.append("	select i.prod_img_num, l.user_id, l.checked_date, i.prod_img,p.prod_name, p.prod_num,p.price, row_number() over(PARTITION BY p.prod_num order by i.prod_img) img ")
				.append("	FROM INTEREST_LIST l join product p on p.prod_num=l.prod_num ")
				.append("	join product_img i on l.prod_num=i.prod_num ")
				.append("	where l.user_id=?) where img=1 and user_id=? ")
				.append("	order by checked_date desc");
				
				pstmt=con.prepareStatement(selectInterest.toString());
			//5. 바인드 변수 값 설정
			pstmt.setString(1, userId);
			pstmt.setString(2, userId);
			//6. 쿼리문 수행 후 결과 얻기
				rs=pstmt.executeQuery();
				
				while(rs.next()) {
					interest
					.add(new InterestListVO(rs.getString("prod_Img"),rs.getString("prod_Name"),rs.getInt("prod_Num"),rs.getInt("price"), rs.getDate("checked_Date")));
				}//end while
			}finally {
				//7. 연결 끊기
				dbCon.dbClose(rs, pstmt, con);
			}//end finally
		
		
		return interest;
		}//selectInterest 관심목록

	 public List<InterestListVO> insertInterest(int prodNum, String userId)throws SQLException{
		 
		 List<InterestListVO> interest=new ArrayList<InterestListVO>();
		 
		 DbConnection dbCon=DbConnection.getInstance();
		 //1. JNDI 사용객체 생성
		 //2. DataSource 얻기
		 Connection con=null;
		 PreparedStatement pstmt=null;
		 ResultSet rs=null;
		 try {
			 //3. Connection 얻기
			 con=dbCon.getConn();
			 //4. 쿼리문 생성객체 얻기
			 StringBuilder selectInterest=new StringBuilder();
			 selectInterest
			 .append("	insert into interest_list(checked_date, prod_num, user_id) ")
			 .append("	values (sysdate, ?, ?)	");
			 
			 pstmt=con.prepareStatement(selectInterest.toString());
			 //5. 바인드 변수 값 설정
			 pstmt.setInt(1, prodNum);
			 pstmt.setString(2, userId);
			 //6. 쿼리문 수행 후 결과 얻기
			 rs=pstmt.executeQuery();
			 
		 }finally {
			 //7. 연결 끊기
			 dbCon.dbClose(rs, pstmt, con);
		 }//end finally
		 
		 
		 return interest;
	 }//insertInterest 관심목록
	 
	  public int deleteInterest(String userId, int prodNum)throws SQLException{
			int cnt=0;
			
			DbConnection dbCon=DbConnection.getInstance();
			
			Connection con=null;
			PreparedStatement pstmt=null;
			
			try {
			//1.
			//2.
				con=dbCon.getConn();
			//3. 쿼리문생성객체 얻기
				String deleteInterest="delete from interest_list where user_id=? and prod_num=?";
				pstmt=con.prepareStatement(deleteInterest);
			//4. 바인드변수에 값 설정
				pstmt.setString(1, userId);
				pstmt.setInt(2, prodNum);
			//5. 쿼리문 수행 후 결과 얻기
				cnt=pstmt.executeUpdate();
			}finally {
			//6.
				 dbCon.dbClose(null, pstmt, con);
			}//end finally
			return cnt;
	  
	}//selectInterest 관심목록 수정
	 	
	public List<MyCommentVO> selectComment(String userId) throws SQLException{
		List<MyCommentVO> comment=new ArrayList<MyCommentVO>();
		
			DbConnection dbCon=DbConnection.getInstance();
			//1. JNDI 사용객체 생성
			//2. DataSource 얻기
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try {
			//3. Connection 얻기
				con=dbCon.getConn();
			//4. 쿼리문 생성객체 얻기
				StringBuilder selectComments=new StringBuilder();
				selectComments
				.append("	SELECT COMMENT_NUM,prod_comments,reply_num,reply_comment,write_date,user_id,prod_num ")
				.append("	FROM ( SELECT COMMENT_NUM, PROD_COMMENTS, 0 AS REPLY_NUM, '' AS REPLY_COMMENT, WRITE_DATE, USER_ID, PROD_NUM ")				
				.append("	FROM PROD_COMMENT UNION ALL ")				
				.append("	SELECT COMMENT_NUM, '', REPLY_NUM, REPLY_COMMENT, WRITE_DATE, USER_ID,( ")				
				.append("	SELECT PROD_NUM FROM PROD_COMMENT ")				
				.append("	WHERE COMMENT_NUM = REPLY_COMMENT.COMMENT_NUM) AS PROD_NUM  FROM REPLY_COMMENT ) ")				
				.append("	where user_id=? ")				
				.append("	ORDER BY COMMENT_NUM,prod_comments ");				
				pstmt=con.prepareStatement(selectComments.toString());
			//5. 바인드 변수 값 설정
			pstmt.setString(1, userId);
			//6. 쿼리문 수행 후 결과 얻기
				rs=pstmt.executeQuery();
				
				while(rs.next()) {
					comment
					.add(new MyCommentVO(rs.getInt("comment_Num"),rs.getInt("reply_Num"),rs.getInt("prod_Num"),rs.getString("prod_Comments"),rs.getString("reply_Comment")));
				}//end while
			}finally {
				//7. 연결 끊기
				dbCon.dbClose(rs, pstmt, con);
			}//end finally
		
		
		return comment;
	}//selectComment
	
	
}//class
