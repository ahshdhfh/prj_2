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
			
			insertPrdInfo.append("insert into ");
			
			pstmt=con.prepareStatement(insertPrdInfo.toString());
		//5. 바인드 변수 값 설정
			pstmt.setString(0, null);
			
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeQuery();
		}finally {
			dbCon.dbClose(null, pstmt, con);
		//7. 연결 끊기
		}//end finally
	}//insertProdInfo
	
}//class
