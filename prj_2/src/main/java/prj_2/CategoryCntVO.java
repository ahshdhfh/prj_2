package prj_2;

/**
 * 카테고리별 상품수용 VO
 * @author user
 */
public class CategoryCntVO {

	private int cycleCnt, clothCnt, partsCnt, suppliesCnt;
	
	public CategoryCntVO() {
	}
	

	public CategoryCntVO(int cycleCnt, int clothCnt, int partsCnt, int suppliesCnt) {
		this.cycleCnt = cycleCnt;
		this.clothCnt = clothCnt;
		this.partsCnt = partsCnt;
		this.suppliesCnt = suppliesCnt;
	}


	public int getCycleCnt() {
		return cycleCnt;
	}

	public void setCycleCnt(int cycleCnt) {
		this.cycleCnt = cycleCnt;
	}

	public int getClothCnt() {
		return clothCnt;
	}

	public void setClothCnt(int clothCnt) {
		this.clothCnt = clothCnt;
	}

	public int getPartsCnt() {
		return partsCnt;
	}

	public void setPartsCnt(int partsCnt) {
		this.partsCnt = partsCnt;
	}

	public int getSuppliesCnt() {
		return suppliesCnt;
	}

	public void setSuppliesCnt(int suppliesCnt) {
		this.suppliesCnt = suppliesCnt;
	}

	@Override
	public String toString() {
		return "CategoryCntVO [cycleCnt=" + cycleCnt + ", clothCnt=" + clothCnt + ", partsCnt=" + partsCnt
				+ ", suppliesCnt=" + suppliesCnt + "]";
	}
	
}
