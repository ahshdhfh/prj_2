package prj_2;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 관리자 상품관리 DAO
 * @author user
 */
public class ManageMentProdDAO {

	/**
	 * 관리자 상품관리 DAO
	 * @return
	 */
	public List<AdminProductVO> prodSearch(String prodNumber) throws SQLException{
		List<AdminProductVO> result=new ArrayList<AdminProductVO>();
		
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
			StringBuilder selectProdSql=new StringBuilder();
			selectProdSql
			.append(" select PROD_NAME, PROD_NUM, INPUT_DATE, PRICE, CATEGORY_NAME, USER_ID 	")
			.append(" from 	PROD_CATEGORY pc, PRODUCT pd														")
			.append(" where	 pc.CATEGORY_NUM=pd.CATEGORY_NUM and PROD_NAME like '%'||?||'%'			");
			
			pstmt=con.prepareStatement(selectProdSql.toString());		
			//바인드 변수 값 설정
			pstmt.setString(1, prodNumber);
			
			rs=pstmt.executeQuery(); //쿼리문을 실행하고 CURSOR의 제어권을 받는다.
				
				while(rs.next()) {
					//조회결과가 있다면 VO를 생성하여 조회결과를 저장 
					String prodName=rs.getString("PROD_NAME");
					int prodNum=rs.getInt("PROD_NUM");
					Date inputDate=rs.getDate("INPUT_DATE");
					int price=rs.getInt("PRICE");
					String categoryName=rs.getString("CATEGORY_NAME");
					String userId=rs.getString("USER_ID"); 
					//같은 이름의 객체를 여러개 저장하기 위해서 
					result.add(new AdminProductVO(prodName, categoryName, userId, inputDate, prodNum, price));
				}//end while				
			
		}finally {		
			dbCon.dbClose(rs, pstmt, con);  // 연결 끊기 
		}//end finally
		
		return result;
	}//prodSearch
	
	
}//ManageMentProdDAO
