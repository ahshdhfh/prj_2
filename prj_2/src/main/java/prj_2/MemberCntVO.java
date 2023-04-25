package prj_2;

public class MemberCntVO {
		private int newMember, wthdrMember;

				
		public MemberCntVO() {
		}

		public MemberCntVO(int newMember, int wthdrMember) {
			this.newMember = newMember;
			this.wthdrMember = wthdrMember;
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
			return "MemberCntVO [newMember=" + newMember + ", wthdrMember=" + wthdrMember + "]";
		}	
		
		
}
