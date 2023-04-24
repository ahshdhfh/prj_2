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
	public List<ProductDetailVO> showProdInfo(int prodNum) throws SQLException {
		List<ProductDetailVO> list = new ArrayList<ProductDetailVO>();

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
					.append("	select prod_name,input_date,view_cnt,interest_cnt,price,detail_txt,		")
					.append("	place_transaction, CATEGORY_NUM, u.USER_ID,PERSONAL_INTRO,		")
					.append("	(select count(*)															")
					.append("	from prod_comment pc												")
					.append("	where p.prod_num=pc.prod_num) as comm_cnt	")
					.append("	from 	product p, users u											")
					.append("	where	u.user_id=p.user_id and p.prod_num=?		");
			
			showPrdImg
					.append("	select PROD_IMG							")
					.append("	from		PRODUCT_IMG				")
					.append("	where prod_num=?						");

			pstmt = con.prepareStatement(showPrdInfo.toString());

			pstmt.setInt(1, prodNum);
			rs=pstmt.executeQuery();

			ProductDetailVO pVO = null;

			while (rs.next()) {
				String name = rs.getString("prod_name");
				Date date = rs.getDate("inputDate");
				int viewCnt = rs.getInt("viewCnt");
				int interCnt = rs.getInt("interestCnt");
				int price = rs.getInt("price");
				String detailTxt = rs.getString("textOfPrd");
				String pTransaction = rs.getString("placeTraction");
				int category = rs.getInt("categoryNumber");
				String user = rs.getString("sellUserId");
				int areaNum = rs.getInt("areaNum");
				String perIntro = rs.getString("selfIntroduce");
				int commentCnt = rs.getInt("commCnt");

				pVO = new ProductDetailVO(null, name, detailTxt, pTransaction, user, perIntro, user, price, prodNum, category, interCnt, commentCnt, viewCnt, areaNum, date);

				list.add(pVO);
			} // end while
			pstmt.executeQuery();
			
				for(int i=0;i<pVO.getProdImg().length;i++) {
					pstmt=con.prepareStatement(showPrdImg.toString());
					pstmt.setString(1, pVO.getProdImg()[i]);
					pstmt.executeQuery();
				}//end for
				
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
