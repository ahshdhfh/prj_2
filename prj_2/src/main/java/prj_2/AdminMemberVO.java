package prj_2;

import java.sql.Date;

/**
 * 관리자 유저테이블 VO
 * @author user
 */
public class AdminMemberVO {

	private String userID, nickName, addr, detailedAddr, actiAreaNum;
	private Date createDate;
	
	public AdminMemberVO() {
	}

	public String getUserID() {
		return userID;
	}
	
	

	public AdminMemberVO(String userID, String nickName, String addr, String detailedAddr, Date createDate, String actiAreaNum) {
		this.userID = userID;
		this.nickName = nickName;
		this.addr = addr;
		this.detailedAddr = detailedAddr;
		this.createDate = createDate;
		this.actiAreaNum = actiAreaNum;
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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
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
