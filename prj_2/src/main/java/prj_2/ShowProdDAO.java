package prj_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ShowProdDAO {

	/**
	 * 상품의 정보를 띄우는 메소드*
	 */
	public ProductDetailVO showProdInfo(int prodNum) throws SQLException {
		ProductDetailVO list =null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		DbConnection dbCon = DbConnection.getInstance();
		try {
			// 1. JNDI 사용객체 생성
			// 2. DateSource를 얻어주기
			// 3. Connection 얻기
			con = dbCon.getConn();
			// 4. 쿼리문 생성객체 얻기
			StringBuilder showPrdInfo = new StringBuilder();
			StringBuilder showPrdImg = new StringBuilder();

			showPrdInfo
					.append("	select prod_name,input_date,view_cnt,interest_cnt,AREA_NAME,price,USER_IMG,detail_txt,	")
					.append("	place_transaction, CATEGORY_NAME, u.USER_ID,PERSONAL_INTRO,		")
					.append("						(	select count(*)													")
					.append("							from prod_comment pc											")
					.append("							where p.prod_num=pc.prod_num) as comm_cnt	")
					.append("	from 	product p, users u,ACTIVITY_AREA aa,PROD_CATEGORY pc											")
					.append("	where	u.user_id=p.user_id and p.CATEGORY_NUM=pc.CATEGORY_NUM  and p.ACTI_AREA_NUM=aa.ACTI_AREA_NUM and p.prod_num=?	");
			
			pstmt = con.prepareStatement(showPrdInfo.toString());
			pstmt.setInt(1, prodNum);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				String prodName = rs.getString("prod_name");
				Date inputDate = rs.getDate("input_date");
				int viewCnt = rs.getInt("view_cnt");
				int interestCnt = rs.getInt("interest_cnt");
				String areaName = rs.getString("AREA_NAME");
				int price = rs.getInt("price");
				String userImg = rs.getString("USER_IMG");
				String detailTxt = rs.getString("detail_txt");
				String placeTransaction = rs.getString("place_transaction");
				String categoryName = rs.getString("CATEGORY_NAME");
				String userId = rs.getString("USER_ID");
				String personalIntro = rs.getString("PERSONAL_INTRO");
				int commCnt = rs.getInt("comm_cnt");

				list = new ProductDetailVO(null, prodName, placeTransaction, detailTxt, userId, personalIntro, userImg, price, prodNum, categoryName, interestCnt, commCnt, viewCnt, areaName, inputDate);
			} // end i
			rs.close();
			pstmt.close();
			
			showPrdImg
			.append("	select PROD_IMG							")
			.append("	from		PRODUCT_IMG				")
			.append("	where prod_num=?						");
			
					pstmt=con.prepareStatement(showPrdImg.toString());
					pstmt.setInt(1, prodNum);
					rs=pstmt.executeQuery();
					
			List<String> imgs=new ArrayList<String>();
			while(rs.next()) {
				imgs.add(rs.getString("PROD_IMG"));
			}//end while
			
			list.setProdImg(imgs);
				
		} finally {
			dbCon.dbClose(rs, pstmt, con);
			// 7. 연결 끊기
		} // end finally
		return list;
	}// showProdInfo

	/**
	 * 북마크 기능 메소드
	 * @return
	 */
	public void insertBookmarkPrd(ProdConditionVO pcVO) throws SQLException {
	    Connection con = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;

	    DbConnection dbCon = DbConnection.getInstance();
	    try {
	        con = dbCon.getConn();
	        con.setAutoCommit(false); // 트랜잭션 시작

	        // 이미 북마크한 상품인지 확인
	        String selectBookmark = "SELECT * FROM INTEREST_LIST WHERE USER_ID = ? AND PROD_NUM = ?";
	        pstmt = con.prepareStatement(selectBookmark.toString());
	        pstmt.setString(1, pcVO.getUserId());
	        pstmt.setInt(2, pcVO.getProdNum());
	        rs = pstmt.executeQuery();

	        if (rs.next()) { // 이미 북마크한 상품이면 관심목록에서 제거
	            String deleteBookmark = "DELETE FROM INTEREST_LIST WHERE USER_ID = ? AND PROD_NUM = ?";
	            pstmt = con.prepareStatement(deleteBookmark.toString());
	            pstmt.setString(1, pcVO.getUserId());
	            pstmt.setInt(2, pcVO.getProdNum());
	            pstmt.executeUpdate();
	        } else { // 북마크한 상품이 아니면 관심목록에 추가
	            String insertBookmark = "INSERT INTO INTEREST_LIST(USER_ID, PROD_NUM) VALUES (?, ?)";
	            pstmt = con.prepareStatement(insertBookmark.toString());
	            pstmt.setString(1, pcVO.getUserId());
	            pstmt.setInt(2, pcVO.getProdNum());
	            pstmt.executeUpdate();
	        }
	        con.commit(); // 트랜잭션 종료
	    } catch (SQLException se) {
	        if (con != null) {
	            con.rollback(); // 트랜잭션 롤백
	        }
	        throw se;

	    } finally {
	        dbCon.dbClose(rs,pstmt, con);
	    }
	}

}// class
