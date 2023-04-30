package prj_2;

public class TotalMemberCntVO {
	private int count, month;	
	
	
	public TotalMemberCntVO() {
	}

	public TotalMemberCntVO(int count, int month) {
		this.count = count;
		this.month = month;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	@Override
	public String toString() {
		return "TotalMemberCntVO [count=" + count + ", month=" + month + "]";
	}
	
	
}
