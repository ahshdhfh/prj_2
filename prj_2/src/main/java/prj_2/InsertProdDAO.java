package prj_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertProdDAO {

	public void insertProdInfo(ProductInsertVO pVO)throws SQLException {
		
		Connection con = null;
		PreparedStatement pstmt=null;
		
		DbConnection dbCon = DbConnection.getInstance();
		try {
		//1. JNDI 사용객체 생성
		//2. DateSource를 얻어주기
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			StringBuilder insertPrdInfo= new StringBuilder();
			  
			StringBuilder insertPrdImg= new StringBuilder();
			
			insertPrdInfo
			.append("insert into product(PROD_NUM, PROD_NAME, INPUT_DATE, SHARING_CHECK, PRICE,			")
			.append("DETAIL_TXT, PLACE_TRANSACTION, CATEGORY_NUM, ACTI_AREA_NUM, USER_ID) values(	")
			.append("GANGNAMKONG.SEQ_PRODUCT_SEQ.NEXTVAL,?,sysdate,?,?,?,?,?,?,?)									");
			
			insertPrdImg
			.append("insert into PRODUCT_IMG(PROD_IMG_NUM, PROD_NUM, PROD_IMG) values(GANGNAMKONG.SEQ_PRODUCT_IMG.NEXTVAL,")
			.append("GANGNAMKONG.SEQ_PRODUCT_SEQ.CURRVAL,?)	");
			
			pstmt=con.prepareStatement(insertPrdInfo.toString());


			//5. 바인드 변수 값 설정
			pstmt.setString(1, pVO.getProdName());
			pstmt.setString(2, pVO.getShare());
			pstmt.setInt(3, pVO.getPrice());
			pstmt.setString(4, pVO.getTextOfPrd());
			pstmt.setString(5, pVO.getPlaceTraction());
			pstmt.setInt(6, pVO.getCategoryNumber());
			pstmt.setInt(7, pVO.getAreaNum());
			pstmt.setString(8, pVO.getUserId());
			
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeQuery();
			
			for(int i=0;i<pVO.getprodImg().length;i++ ) {
				pstmt=con.prepareStatement(insertPrdImg.toString());
				pstmt.setString(1, pVO.getprodImg()[i]);
				pstmt.executeQuery();
			}
			
			
		}finally {
			dbCon.dbClose(null, pstmt, con);
		//7. 연결 끊기
		}//end finally
	}//insertProdInfo
	
	/**
	 * 상품의 정보를 수정하는 메소드
	 * @return
	 */
	public int updatePrd(ProductInsertVO pVO)throws SQLException {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		
		try {
		//1. JNDI 사용객체 생성
		//2. DateSource를 얻어주기
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			StringBuilder updatePrd=new StringBuilder();
			
			StringBuilder updatePrdImg= new StringBuilder();
			
			//상품 정보 수정 sql문
			updatePrd
			.append("		update product					 	")
			.append("		set  PROD_NAME=?, PRICE=?,DETAIL_TXT=?, PLACE_TRANSACTION=?, CATEGORY_NUM=?	")
			.append("		where  prod_num=? 				");
			
			//상품 이미지 정보 수정 sql문
			updatePrdImg
			.append("		update product_img	")
			.append("		set prod_img=?			")
			.append("		where prod_num=?	");
			
			
			pstmt=con.prepareStatement(updatePrd.toString());
		//5. 바인드 변수 값 설정
			pstmt.setString(1, pVO.getProdName());
			pstmt.setInt(2, pVO.getPrice());
			pstmt.setString(3, pVO.getTextOfPrd());
			pstmt.setString(4, pVO.getPlaceTraction());
			pstmt.setInt(5, pVO.getCategoryNumber());
			pstmt.setInt(6, pVO.getProdNum());
			
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeQuery();
			
			for(int i=0;i<pVO.getprodImg().length;i++ ) {
				pstmt=con.prepareStatement(updatePrdImg.toString());
				pstmt.setString(1, pVO.getprodImg()[i]);
			}
			pstmt.setInt(2,pVO.getProdNum());
			pstmt.executeQuery();
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);	
		}//end finally
		return 0;
	
	}//updatePRd
	
}//class
