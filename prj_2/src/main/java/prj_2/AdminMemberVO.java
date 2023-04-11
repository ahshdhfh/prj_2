package prj_2;

/**
 * 관리자 유저테이블 VO
 * @author user
 */
public class AdminMemberVO {

	private String userID, nickName, addr, detailedAddr, createDate, actiAreaNum;

	public AdminMemberVO() {
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDetailedAddr() {
		return detailedAddr;
	}

	public void setDetailedAddr(String detailedAddr) {
		this.detailedAddr = detailedAddr;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getActiAreaNum() {
		return actiAreaNum;
	}

	public void setActiAreaNum(String actiAreaNum) {
		this.actiAreaNum = actiAreaNum;
	}

	@Override
	public String toString() {
		return "AdminMemberVO [userID=" + userID + ", nickName=" + nickName + ", addr=" + addr + ", detailedAddr="
				+ detailedAddr + ", createDate=" + createDate + ", actiAreaNum=" + actiAreaNum + "]";
	}
	
	
	
}
