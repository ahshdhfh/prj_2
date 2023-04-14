package prj_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
			insertComm.append("insert into");
			
			pstmt=con.prepareStatement(insertComm.toString());
		//5. 바인드 변수 값 설정
			pstmt.setString(1, cVO.getId());
			pstmt.setString(2, cVO.getWriteCom());
			pstmt.setInt(3, cVO.getCommentNum());
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
			updateCom.append("update 	");
			
			pstmt=con.prepareStatement(updateCom.toString());
		//5. 바인드 변수 값 설정
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
			StringBuilder deleteCom=new StringBuilder();
			deleteCom.append("delete from ~ 	");
			
			pstmt=con.prepareStatement(deleteCom.toString());
		//5. 바인드 변수 값 설정
		//6. 쿼리문 수행 후 결과 얻기
		}finally {
		//7. 연결끊기
			dbCon.dbClose(null, pstmt, con);	
		}//end finally
	}//deleteComm
	
	/**
	 * 댓글을 채택하는 메소드
	 */
	public void updateTablePrd() {
		
	}//updateTablePrd
}//class
