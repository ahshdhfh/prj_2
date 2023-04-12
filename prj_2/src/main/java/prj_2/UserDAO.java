package prj_2;

public class UserDAO {

	public UserDAO() {

	}
	
	/**
	 * 회원가입
	 * @return
	 */
	public boolean insertMember(UserVO userVO) {
		boolean result=false;
		
		return result;
	}//insertMember
	
	/**
	 * 아이디 중복확인
	 * @return
	 */
	public boolean idDup(String id) {
		boolean result=false;
		
		return result;
	}//idDup
	
	/**
	 * 닉네입 중복확인
	 * @return
	 */
	public boolean nickDup(String nickName) {
		boolean result=false;
		
		return result;
	}//nickDup
	
	/**
	 * 로그인
	 * 로그인후 세션에 정보 입력
	 * @return
	 */
	public LoginSessionVO selectLogin(LoginVO loginVO) {
		LoginSessionVO lsVO = new LoginSessionVO();
		
		return lsVO;
	}//selectLogin
	
	/**
	 * 로그인한 유저정보로 UserVO 셋팅
	 * @param id
	 * @return
	 */
	public UserVO selectUserVO(String id) {
		UserVO userVO = new UserVO();
		
		
		return userVO;
	}//selectUserVO
	
	/**
	 * 아이디 찾기
	 * @param findIdVO
	 * @return
	 */
	public String selectFindId(FindIdVO findIdVO) {
		String result ="";
		
		return result;
	}//selectFindId
	
	
	/**
	 * 비밀번호 찾기
	 * @param findPassVO
	 * @return
	 */
	public String selectFindPass(FindPassVO findPassVO) {
		String result ="";
		
		return result;
	}//selectFindPass
	
	
	/**
	 * 회원정보수정
	 * @param id
	 * @param inputPass
	 * @return
	 */
	public boolean selectUserInfo(String sessionId, String inputPass) {//세션에서 가져온 id, 본인확인용 비밀번호 재입력
		boolean result=false;
		
		
		
		return result;
	}//selectUserInfo
	
	/**
	 * 비밀번호 변경
	 * 비밀번호 변경페이지에서 실행될 메서드
	 * @param mpVO
	 * @return
	 */
	public int updatePass(ModifyPassVO mpVO) {
		int result=0;
		
		return result;
	}//updatePass
	
	/**
	 * 변경가능한 정보 HTML Form Control에 set
	 * @param sessionId
	 * @return
	 */
	public UserVO selectInfo(String sessionId) {//세션에서 가져온 아이디
		UserVO userVO = new UserVO();
		
		
		return userVO;
	}//selectInfo
	
	/**
	 * 회원정보 수정하기
	 * @param miVO
	 * @return
	 */
	public int updateInfo(ModifyInfoVO miVO) {
		int result=0;
		
		return result;
	}//updateInfo
	
	
	/**
	 * 회원탈퇴 
	 * @param sessionId
	 * @return
	 */
	public String deleteUser(String sessionId) {// 세션에 저장된 id
		String deleteDate="";// 탈퇴일시
		
		return deleteDate;
	}//deleteUser
	
	/**
	 * 변경가능한 정보 셋팅
	 * @param lsVO
	 */
	public void setProfile(LoginSessionVO lsVO) {
		
	}//setProfile
	
	public int updateProfile(ModifyProfileVO mfVO) {
		int result=0;
		
		
		return result;
	}//updateProfile
	
}//class
