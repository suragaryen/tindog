package kr.co.tindog.wishlist;

public class WishlistDTO {
	private String WISHLIST_NO; 
	private String EMAIL;
	private int UPRODUCT_NO;
	private String WISHDATE;
	
	
	public String getWISHLIST_NO() {
		return WISHLIST_NO;
	}
	public void setWISHLIST_NO(String wISHLIST_NO) {
		WISHLIST_NO = wISHLIST_NO;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public int getUPRODUCT_NO() {
		return UPRODUCT_NO;
	}
	public void setUPRODUCT_NO(int uPRODUCT_NO) {
		UPRODUCT_NO = uPRODUCT_NO;
	}
	public String getWISHDATE() {
		return WISHDATE;
	}
	public void setWISHDATE(String wISHDATE) {
		WISHDATE = wISHDATE;
	}
	@Override
	public String toString() {
		return "WishlistDTO [WISHLIST_NO=" + WISHLIST_NO + ", EMAIL=" + EMAIL + ", UPRODUCT_NO=" + UPRODUCT_NO
				+ ", WISHDATE=" + WISHDATE + "]";
	}
	
	

}
