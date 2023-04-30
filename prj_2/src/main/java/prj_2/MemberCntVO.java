package prj_2;

public class MemberCntVO {
		private int newMember, wthdrMember;
		private String month;
				
		public MemberCntVO() {
		}


		public MemberCntVO(int newMember, int wthdrMember, String month) {
			this.newMember = newMember;
			this.wthdrMember = wthdrMember;
			this.month = month;
		}


		public String getMonth() {
			return month;
		}

		public void setMonth(String month) {
			this.month = month;
		}

		public int getNewMember() {
			return newMember;
		}

		public void setNewMember(int newMember) {
			this.newMember = newMember;
		}

		public int getWthdrMember() {
			return wthdrMember;
		}

		public void setWthdrMember(int wthdrMember) {
			this.wthdrMember = wthdrMember;
		}


		@Override
		public String toString() {
			return "MemberCntVO [newMember=" + newMember + ", wthdrMember=" + wthdrMember + ", month=" + month + "]";
		}


		
		
}
