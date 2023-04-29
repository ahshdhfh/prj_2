package prj_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.spi.DirStateFactory.Result;

public class InsertProdDAO {

	/**
	 * 상품등록 메소드
	 * @param piVO
	 * @throws SQLException
	 */
	public void insertProdInfo(ProductInsertVO piVO)throws SQLException {
		
		Connection con = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
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
			
			String selectProdNum="	select prod_num from product where prod_name=?";
			
			insertPrdImg
			.append("	insert into PRODUCT_IMG(PROD_IMG_NUM, PROD_NUM, PROD_IMG) " )
			.append("	values(GANGNAMKONG.SEQ_PRODUCT_IMG.NEXTVAL, ? , ?	)");
			
			pstmt=con.prepareStatement(insertPrdInfo.toString());

			String insertProdStatus="insert into product_status values(sysdate,?,'판매중')";
			
			
			//5. 바인드 변수 값 설정
			pstmt.setString(1, piVO.getProdName());
			pstmt.setString(2, piVO.getShare());
			pstmt.setInt(3, piVO.getPrice());
			pstmt.setString(4, piVO.getTextOfPrd());
			pstmt.setString(5, piVO.getPlaceTraction());
			pstmt.setInt(6, piVO.getCategoryNumber());
			pstmt.setInt(7, piVO.getAreaNum());
			pstmt.setString(8, piVO.getUserId());
			
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeQuery();
			pstmt.close();
			
			pstmt=con.prepareStatement(selectProdNum);
			pstmt.setString(1, piVO.getProdName());
			
			rs=pstmt.executeQuery();//상품번호 가져오기
			
			if(rs.next()) {
				piVO.setProdNum(rs.getInt("prod_num"));//상품번호 셋
			}
			pstmt.close();
			rs.close();
			
			
			for(int i=0;i<piVO.getprodImg().length;i++ ) {
				pstmt=con.prepareStatement(insertPrdImg.toString());
				pstmt.setInt(1, piVO.getProdNum());
				pstmt.setString(2, piVO.getprodImg()[i]);
				pstmt.executeQuery();
				pstmt.close();
			}//end for
				
			pstmt=con.prepareStatement(insertProdStatus);//상품 상태 테이블에 인서트
			
			pstmt.setInt(1, piVO.getProdNum());
			pstmt.executeQuery();
			
			}finally {
			dbCon.dbClose(rs, pstmt, con);
		//7. 연결 끊기
		}//end finally
	}//insertProdInfo
	
	
	
	
	
	/**
	 * 상품의 정보를 수정하는 메소드 (상품이미지는 삭제하고 다시 insert 해야함)
	 * @return
	 */
	public int updatePrd(ProductInsertVO piVO)throws SQLException {
		
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
			
			StringBuilder deletePrdImg= new StringBuilder();
			StringBuilder insertPrdImg= new StringBuilder();
			
			//상품 정보 수정 sql문
			updatePrd
			.append("		update product					 	")
			.append("		set  PROD_NAME=?, PRICE=?,DETAIL_TXT=?, PLACE_TRANSACTION=?, CATEGORY_NUM=?	")
			.append("		where  prod_num=? 				");
						
			pstmt=con.prepareStatement(updatePrd.toString());
		//5. 바인드 변수 값 설정
			pstmt.setString(1, piVO.getProdName());
			pstmt.setInt(2, piVO.getPrice());
			pstmt.setString(3, piVO.getTextOfPrd());
			pstmt.setString(4, piVO.getPlaceTraction());
			pstmt.setInt(5, piVO.getCategoryNumber());
			pstmt.setInt(6, piVO.getProdNum());
			
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeQuery();
			pstmt.close();
			
			
			//상품 이미지 정보 수정 sql문
			deletePrdImg
			.append("		delete from PRODUCT_IMG	")
			.append("		where prod_num=?	");
						
			pstmt=con.prepareStatement(deletePrdImg.toString());
			pstmt.setInt(1, piVO.getProdNum());
			pstmt.executeQuery();
			pstmt.close();
			
			insertPrdImg
			.append("insert into PRODUCT_IMG(PROD_IMG_NUM, PROD_NUM, PROD_IMG) values(GANGNAMKONG.SEQ_PRODUCT_IMG.NEXTVAL,		")
			.append("?,?)																										");
						
			//6. 쿼리문 수행 후 결과 얻기			
			for(int i=0;i<piVO.getprodImg().length;i++ ) {
				pstmt=con.prepareStatement(insertPrdImg.toString());
				pstmt.setInt(1, piVO.getProdNum());
				pstmt.setString(2,  piVO.getprodImg()[i]);
				pstmt.executeQuery();
				pstmt.close();
			}//end for
			
		
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);	
		}//end finally
		return 0;
	
	}//updatePRd
	/**
	 * 수정할 정보를 수정페이지에 세팅하는 메소드
	 * @return
	 */
	public ProductInsertVO setSelectPrd(int prodNum)throws SQLException {
		
		ProductInsertVO piVO = null;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		DbConnection dbCon=DbConnection.getInstance();
		
		try {
			//1. JNDI 사용객체 생성
			//2. DateSource를 얻어주기
			//3. Connection 얻기
			con=dbCon.getConn();
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectPrd=new StringBuilder();
			StringBuilder selectImg= new StringBuilder();
			

			//상품 정보 수정 sql문
			//PROD_NUM	PROD_NAME	INPUT_DATE	VIEW_CNT	INTEREST_CNT	SHARING_CHECK	PRICE	DETAIL_TXT	PLACE_TRANSACTION	CATEGORY_NUM	ACTI_AREA_NUM	USER_ID	
			
			selectPrd
			.append("		select	  PROD_NUM,	PROD_NAME,	INPUT_DATE	VIEW_CNT,	INTEREST_CNT,  	")
			.append("	SHARING_CHECK, 	PRICE, 	DETAIL_TXT,  PLACE_TRANSACTION,  	CATEGORY_NUM, 	ACTI_AREA_NUM, 	USER_ID		 	")
			.append("		from      PRODUCT					")
			.append("		where  prod_num=? 					");
			
			pstmt=con.prepareStatement(selectPrd.toString());
			//5. 바인드 변수 값 설정
			pstmt.setInt(1, prodNum);
			
	
			//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			if(rs.next()) {
				piVO = new ProductInsertVO(null, rs.getString("prod_name"), rs.getString("DETAIL_TXT"), rs.getString("SHARING_CHECK"), rs.getString("PLACE_TRANSACTION"), 
						rs.getString("USER_ID"), rs.getInt("price"), rs.getInt("CATEGORY_NUM"), rs.getInt("ACTI_AREA_NUM"), rs.getInt("PROD_NUM"));
			}//end if
			
			pstmt.close();

			//상품 이미지 정보 수정 sql문
			selectImg
			.append("		select	PROD_IMG			")
			.append("		from    PRODUCT_IMG	")
			.append("		where prod_num=?		");
			
			pstmt=con.prepareStatement(selectImg.toString());
			pstmt.setInt(1, prodNum);
			rs.close();
			rs=pstmt.executeQuery();
			String[] images= new String[6];
			int i=0;
			while(rs.next()) {
				images[i]=rs.getString("prod_img");
			}//end while
			piVO.setprodImg(images);
	
			
		}finally {
			//7. 연결끊기
			dbCon.dbClose(rs, pstmt, con);	
		}//end finally
		return piVO;
		
	}//setSelectPrd
	
}//class
