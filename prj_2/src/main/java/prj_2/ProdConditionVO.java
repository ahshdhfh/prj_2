package prj_2;

public class ProdConditionVO {
	private String sellerId, userId;
	private int prodNum;
	
	public ProdConditionVO() {
	
	}

	public ProdConditionVO(String sellerId, String userId, int prodNum) {
		this.sellerId = sellerId;
		this.userId = userId;
		this.prodNum = prodNum;
	}

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getProdNum() {
		return prodNum;
	}

	public void setProdNum(int prodNum) {
		this.prodNum = prodNum;
	}
	
	
	
}
