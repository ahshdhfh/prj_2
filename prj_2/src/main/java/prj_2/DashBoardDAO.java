package prj_2;

import java.util.List;

public class DashBoardDAO {

	/**
	 * 오늘 총 로그인 수 
	 * @param loginDate
	 * @return
	 */
	public int totalVisit(String loginDate) {	
		int result=0;
				
		return result;
	}//totalVisit
	
	/**
	 * 총 회원수
	 * @return
	 */
	public int memberCmt() {
		int result=0;
		
		return result;
	}//memberCmt
	
	/**
	 * 신규가입 회원 수
	 * @return
	 */
	public int newMemberCnt() {
		int result=0;
		
		return result;
	}//newMemberCnt
	
	/**
	 * 오늘 탈퇴환 회원 수
	 * @return
	 */
	public int withdrawalMembers() {
		int result=0;
		
		return result;
	}//withdrawalMembers
	
	/**
	 * 오늘 거래완료 수
	 * @return
	 */
	public int tradingStatusCnt() {
		int result=0;
		
		return result;
	}//tradingStatusCnt
	
	/**
	 * 거래현황
	 * @return
	 */
	public String[] tradingStatus() {
		String[] result=null;
		
		return result;
	}//tradingStatus
	 
	/**
	 * 카테고리별 상품 수
	 * @return
	 */
	public List<CategoryCntVO> categoryCnt(){
		List<CategoryCntVO> result=null;
		
		return result;
	}//categoryCnt
	
	/**
	 * 동별 상품현황
	 * @return
	 */
	public List<Integer> dongCnt(){
		List<Integer> result=null;
		
		return result;
	}//dongCnt
	
	/**
	 * 신규탈퇴회원
	 * @return
	 */
	public List<Integer> newAndWithdrawallCnt(){
		List<Integer> result=null;
		
		return result;
	}//newAndWithdrawallCnt
	
	/**
	 * 월별총회원수
	 * @return
	 */
	public List<Integer> monthTotalCnt(){
		List<Integer> result=null;
		
		return result;
	}//monthTotalCnt
	
	
	
}//class
