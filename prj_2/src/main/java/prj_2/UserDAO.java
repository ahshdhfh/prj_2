package prj_2;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Year;


public class UserDAO {

	public UserDAO() {

	}
	
	/**
	 * 회원가입
	 * @return
	 * @throws SQLException 
	 */
	public void insertMember(UserVO userVO) throws SQLException {
		Connection con =null;
		PreparedStatement pstmt = null;
		
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder insertMember = new StringBuilder();
			insertMember 
			.append("insert into users(USER_ID,USER_PASSWORD,USER_NAME,")//3개
			.append("EMAIL,NICKNAME,GENDER,ZIPCODE,ADDR,DETAILED_ADDR,")//6개
			.append("CREATE_DATE,TEL,ACTI_AREA_NUM,BIRTHDATE) ")//sysdate,3개
			.append("values(?,?,?,?,?,?,?,?,?,sysdate,?,?,?)");
			pstmt=con.prepareStatement(insertMember .toString());
			//5. 바인드변수 값 설정
			pstmt.setString(1, userVO.getUserId());//1.아이디
			pstmt.setString(2, userVO.getUserPassword());//2.비번
			pstmt.setString(3, userVO.getUserName());//3.이름
			pstmt.setString(4, userVO.getEmail());//4.이메일
			pstmt.setString(5, userVO.getNickName());//5.닉네임
			pstmt.setString(6, userVO.getGender());//6.성별
			pstmt.setInt(7, userVO.getZipcode());//7.우편번호
			pstmt.setString(8, userVO.getAddr());//8.주소
			pstmt.setString(9, userVO.getDetailAddr());//9.상세주소
			pstmt.setString(10, userVO.getTel1()+userVO.getTel2());//10.전화번호
			pstmt.setInt(11, userVO.getActAreaNum());//11.활동지역번호
			pstmt.setString(12, userVO.getBirthDate());//12.생일
			//6. 쿼리문 수행 후 결과 얻기
			pstmt.execute();
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(null, pstmt, con);
		}//end finally
	}//insertMember
	
	/**
	 * 아이디 중복확인
	 * @return
	 * @throws SQLException 
	 */
	public boolean idDup(String id) throws SQLException {
		boolean result=false;
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectIdDup = new StringBuilder();
			selectIdDup 
			.append("	select user_id	")//3개
			.append("	from users	")
			.append("	where user_id=?");//3개
			pstmt=con.prepareStatement(selectIdDup.toString());
			//5. 바인드변수 값 설정
			pstmt.setString(1, id);//1.아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			rs=pstmt.executeQuery();
			if(!rs.next()) {//있으면 중복이니까 없응면 true!
				result=true;//일치하지않으면 결과는 true, 일치하면(중복이면) false
			}
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		return result;
	}//idDup
	
	/**
	 * 닉네임 중복확인
	 * @return
	 * @throws SQLException 
	 */
	public boolean nickDup(String nickName) throws SQLException {
		boolean result=false;

		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectIdDup = new StringBuilder();
			selectIdDup 
			.append("	select nickname	")//3개
			.append("	from users	")
			.append("	where nickname=?");//3개
			//5. 바인드변수 값 설정
			pstmt=con.prepareStatement(selectIdDup.toString());
			pstmt.setString(1, nickName);//닉네임
			
			//6. 쿼리문 수행 후 결과 얻기
			
			rs=pstmt.executeQuery();
			if(!rs.next()) {//있으면 중복이니까 없응면 true!
				result=true;//일치하지않으면 결과는 true, 일치하면(중복이면) false
			}
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		return result;
	}//nickDup
	
	/**
	 * 이메일 중복확인
	 * @param eMail
	 * @return
	 * @throws SQLException 
	 */
	public boolean eMailDup(String eMail) throws SQLException {
		boolean result=false;

		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectEMailDup = new StringBuilder();
			selectEMailDup 
			.append("	select email	")//3개
			.append("	from users	")
			.append("	where email=?");//3개
			//5. 바인드변수 값 설정
			pstmt=con.prepareStatement(selectEMailDup.toString());
			pstmt.setString(1, eMail);//1.아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			if(!rs.next()) {//값이 없으면(중복이아니면) 타게함
				result=true;//true만들기
			}
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		return result;
	}//eMailDup
	
	/**
	 * 로그인
	 * 로그인후 세션에 정보 입력
	 * @return
	 * @throws SQLException 
	 */
	public LoginSessionVO selectLogin(LoginVO loginVO) throws SQLException {
		LoginSessionVO lsVO = new LoginSessionVO();
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectLogin = new StringBuilder();
			selectLogin 
			.append("	select nickname, personal_intro, user_img, user_id, ip, acti_area_num	")//3개
			.append("	from users	")
			.append("	where user_id=? and user_password=? 	");//3개
			
			pstmt=con.prepareStatement(selectLogin.toString());

			//5. 바인드변수 값 설정
			System.out.println(loginVO.getUserId()+"/"+loginVO.getUserPassword());
			
			pstmt.setString(1, loginVO.getUserId());//1.아이디
			pstmt.setString(2, loginVO.getUserPassword());//1.아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			if(rs.next()) {
				System.out.println("rs.next=true");
				lsVO = new LoginSessionVO
						(rs.getString("nickname"),rs.getString("personal_intro"),
						rs.getString("user_img"),rs.getString("user_id"),
						rs.getString("ip"),rs.getInt("acti_area_num"));//일치하지않으면 결과는 true, 일치하면(중복이면) false
			}//end if
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		return lsVO;
	}//selectLogin
	
	
	/**
	 * 아이디 찾기
	 * @param findIdVO
	 * @return 찾은 ID 반환
	 * @throws SQLException 
	 */
	public String selectFindId(FindIdVO findIdVO) throws SQLException {
		String result ="";
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectFindId = new StringBuilder();
			selectFindId 
			.append("	select user_id	")
			.append("	from users	")
			.append("	where user_name=? and email=?");
			
			//5. 바인드변수 값 설정
			pstmt=con.prepareStatement(selectFindId.toString());
			pstmt.setString(1, findIdVO.getUserName());//1. 이름
			pstmt.setString(2, findIdVO.getEmail());//2.이메일
			
			//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			
			if(rs.next()) {				
				result = rs.getString("user_id");//일치하지않으면 결과는 true, 일치하면(중복이면) false
			}
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		return result;
	}//selectFindId
	
	
	/**
	 * 비밀번호 찾기
	 * @param findPassVO
	 * @return
	 * @throws SQLException 
	 */
	public String selectFindPass(FindPassVO findPassVO) throws SQLException {
		String result ="실패";
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectFindPass = new StringBuilder();
			selectFindPass 
			.append("	select user_password	")
			.append("	from users	")
			.append("	where user_name=? and email=? and user_id=? ");//3개
			//5. 바인드변수 값 설정
			pstmt=con.prepareStatement(selectFindPass.toString());
			pstmt.setString(1, findPassVO.getUserName());//1. 이름
			pstmt.setString(2, findPassVO.getEmail());//2.이메일
			pstmt.setString(3, findPassVO.getUserId());//3.아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {				
				//비밀번호 재설정으로 넘어가게하기
				result="성공";
			}
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		return result;
	}//selectFindPass
	
	
	/**
	 * 회원정보수정전 비밀번호 재확인용 select
	 * @param id
	 * @param inputPass
	 * @return
	 * @throws SQLException 
	 */
	public boolean selectUserInfo(String sessionId, String inputPass) throws SQLException {//세션에서 가져온 id, 본인확인용 비밀번호 재입력
		boolean result=false;
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectUserInfo = new StringBuilder();
			selectUserInfo 
			.append("	select user_id	")//아이디를 선택해서
			.append("	from users	")
			.append("	where user_id=? and user_password=? 	");//3개
			
			pstmt=con.prepareStatement(selectUserInfo.toString());

			//5. 바인드변수 값 설정
			pstmt.setString(1, sessionId);//1.아이디
			pstmt.setString(2, inputPass);//1.아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {//결과가 있으면?
				result=true;
			}else {//없으면??
				result=false;
			}//end else
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		return result;
	}//selectUserInfo
	
	/**
	 * 비밀번호 변경
	 * 비밀번호 변경페이지에서 실행될 메서드
	 * @param mpVO
	 * @return
	 * @throws SQLException 
	 */
	public int updatePass(ModifyPassVO mpVO) throws SQLException {//세션에 저장된 아이디왜, 유효성 검증된 새로 입력된 비밀번호
		int result=0;
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder updatePass = new StringBuilder();
			updatePass 
			.append("	update users	")//3개
			.append("	set user_password=?	 ")
			.append("	where user_id=?  	");//3개
			
			pstmt=con.prepareStatement(updatePass.toString());

			//5. 바인드변수 값 설정
			pstmt.setString(1, mpVO.getNewPass());//1. 비번
			pstmt.setString(2, mpVO.getUserId());//2. 아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			result=pstmt.executeUpdate();
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		return result;
	}//updatePass
	
	/**
	 * 변경가능한 정보 HTML Form Control에 set
	 * @param sessionId
	 * @return
	 * @throws SQLException 
	 */
	public ModifyInfoVO selectInfo(String sessionId) throws SQLException {//세션에서 가져온 아이디
		ModifyInfoVO miVO = new ModifyInfoVO();
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectInfo = new StringBuilder();
			selectInfo 
			.append("	select email, addr, detailaddr, tel, acti_area_num, zipcode	")
			.append("	from users	")
			.append("	where user_id=? ");
			
			pstmt=con.prepareStatement(selectInfo.toString());
			
			//5. 바인드변수 값 설정
			pstmt.setString(1, sessionId);//1.아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
			miVO = new ModifyInfoVO(rs.getString("email"), rs.getString("addr"),
					rs.getString("detailaddr"), rs.getString("tel"),
					rs.getInt("acti_area_num"), rs.getInt("zipcode"));
			}
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		return miVO;
	}//selectInfo
	
	/**
	 * 회원정보 수정하기
	 * @param miVO
	 * @return
	 * @throws SQLException 
	 */
	public int updateInfo(ModifyInfoVO miVO, String sessionId) throws SQLException {
		int result=0;
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder updatePass = new StringBuilder();
			updatePass 
			.append("	update users	")
			.append("	set	 email=?		")
			.append("	 	 addr=?		")
			.append("		 detailaddr=?		")
			.append("	 	 tel=?		")
			.append("		 acti_area_num=?		")
			.append("		 zipcode=?		")
			.append("	where user_id=? 	");
			
			pstmt=con.prepareStatement(updatePass.toString());

			//5. 바인드변수 값 설정
			pstmt.setString(1, miVO.getEmail());//1.아이디
			pstmt.setString(2, miVO.getAddr());//2.주소
			pstmt.setString(3, miVO.getDetailAddr());//3. 상세주소
			pstmt.setString(4, miVO.getTel());//1.아이디
			pstmt.setInt(5, miVO.getActAreaNum());//1.아이디
			pstmt.setInt(6, miVO.getZipcode());//1.아이디
			pstmt.setString(7, sessionId);//1.아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			result=pstmt.executeUpdate();
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		
		
		return result;
	}//updateInfo
	
	
	/**
	 * 회원탈퇴 
	 * @param sessionId
	 * @return
	 * @throws SQLException 
	 */
	public int deleteUser(String sessionId) throws SQLException {// 세션에 저장된 id
		int result=0;// 탈퇴일시
		
		Connection con =null;
		PreparedStatement pstmt = null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder deleteUser= new StringBuilder();
			deleteUser 
			.append("	delete from users	")
			.append("	where user_id=? ");
			
			pstmt=con.prepareStatement(deleteUser.toString());
			
			//5. 바인드변수 값 설정
			pstmt.setString(1, sessionId);//1.아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			result =pstmt.executeUpdate();
		
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(null, pstmt, con);
		}//end finally
		
		return result;
	}//deleteUser
	
	/**
	 * 변경가능한 정보 셋팅
	 * @param lsVO
	 * @throws SQLException 
	 */
	public ModifyProfileVO setProfile(String sessionId) throws SQLException {//select 사용 lsVO에 채우기
		ModifyProfileVO mpVO = new ModifyProfileVO();
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectInfo = new StringBuilder();
			selectInfo 
			.append("	select nickname,  user_img, personal_intro	")
			.append("	from users	")
			.append("	where user_id=? ");
			
			pstmt=con.prepareStatement(selectInfo.toString());
			
			//5. 바인드변수 값 설정
			pstmt.setString(1, sessionId);//1.세션에서 가져온아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
			mpVO = new ModifyProfileVO
					(rs.getString("nickname"), rs.getString("user_img"), rs.getString("personal_intro"));
			}
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}//end finally
		return mpVO;
	}//setProfile
	
	/**
	 * 프로필 업데이트
	 * @param mfVO
	 * @return
	 * @throws SQLException 
	 */
	public int updateProfile(ModifyProfileVO mpVO, String sessionId) throws SQLException {
		int result=0;
		
		Connection con =null;
		PreparedStatement pstmt = null;
		DbConnection dbCon=DbConnection.getInstance();
		try {
			//1. JNDI 사용 객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con=dbCon.getConn();
		
			//4. 쿼리문 생성객체 얻기
			StringBuilder deleteUser= new StringBuilder();
			deleteUser 
			.append("	update users	")
			.append("	set nickname=?")
			.append("		user_img=?")
			.append("		personal_intro=?")
			.append("	where user_id=? ");
			
			pstmt=con.prepareStatement(deleteUser.toString());
			
			//5. 바인드변수 값 설정
			pstmt.setString(1, mpVO.getNickName());//1.아이디
			pstmt.setString(2, mpVO.getUserImg());//2.이미지
			pstmt.setString(3, mpVO.getPersonalIntro());//3.자기소개
			pstmt.setString(4, sessionId);//4.세션에서 가져온 아이디
			
			//6. 쿼리문 수행 후 결과 얻기
			
			result =pstmt.executeUpdate();
		
			
		} finally {
			//7. 연결 끊기
			dbCon.dbClose(null, pstmt, con);
		}//end finally
		
		return result;
	}//updateProfile
	
}//class
