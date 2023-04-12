package prj_2;

public class ModifyInfoVO {
	private String eMail, addr, detailAddr, phoneNum;
	private int actAreaNum, zipcode;
	
	public ModifyInfoVO() {

	}

	public ModifyInfoVO(String eMail, String addr, String detailAddr, String phoneNum, int actAreaNum, int zipcode) {
		this.eMail = eMail;
		this.addr = addr;
		this.detailAddr = detailAddr;
		this.phoneNum = phoneNum;
		this.actAreaNum = actAreaNum;
		this.zipcode = zipcode;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDetailAddr() {
		return detailAddr;
	}

	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public int getActAreaNum() {
		return actAreaNum;
	}

	public void setActAreaNum(int actAreaNum) {
		this.actAreaNum = actAreaNum;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	
	
}
