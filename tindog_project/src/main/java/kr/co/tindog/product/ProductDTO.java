package kr.co.tindog.product;

public class ProductDTO {

	private int UPRODUCT_NO;
	private String SUBJECT;
	private String NICKNAME;
	private String UPRODUCT_CD;
	private int PRICE ;
	private String INFO;
	private String STATUS;
	private String REGDATE;
	private String AREA;
	private String LOCATION;
	private String MAINPHOTO;
	private String PHOTO;
	public int getUPRODUCT_NO() {
		return UPRODUCT_NO;
	}
	public void setUPRODUCT_NO(int uPRODUCT_NO) {
		UPRODUCT_NO = uPRODUCT_NO;
	}
	public String getSUBJECT() {
		return SUBJECT;
	}
	public void setSUBJECT(String sUBJECT) {
		SUBJECT = sUBJECT;
	}
	public String getNICKNAME() {
		return NICKNAME;
	}
	public void setNICKNAME(String nICKNAME) {
		NICKNAME = nICKNAME;
	}
	public String getUPRODUCT_CD() {
		return UPRODUCT_CD;
	}
	public void setUPRODUCT_CD(String uPRODUCT_CD) {
		UPRODUCT_CD = uPRODUCT_CD;
	}
	public int getPRICE() {
		return PRICE;
	}
	public void setPRICE(int pRICE) {
		PRICE = pRICE;
	}
	public String getINFO() {
		return INFO;
	}
	public void setINFO(String iNFO) {
		INFO = iNFO;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public String getREGDATE() {
		return REGDATE;
	}
	public void setREGDATE(String rEGDATE) {
		REGDATE = rEGDATE;
	}
	public String getAREA() {
		return AREA;
	}
	public void setAREA(String aREA) {
		AREA = aREA;
	}
	public String getLOCATION() {
		return LOCATION;
	}
	public void setLOCATION(String lOCATION) {
		LOCATION = lOCATION;
	}
	public String getMAINPHOTO() {
		return MAINPHOTO;
	}
	public void setMAINPHOTO(String mAINPHOTO) {
		MAINPHOTO = mAINPHOTO;
	}
	public String getPHOTO() {
		return PHOTO;
	}
	public void setPHOTO(String pHOTO) {
		PHOTO = pHOTO;
	}
	@Override
	public String toString() {
		return "ProductDTO [UPRODUCT_NO=" + UPRODUCT_NO + ", SUBJECT=" + SUBJECT + ", NICKNAME=" + NICKNAME
				+ ", UPRODUCT_CD=" + UPRODUCT_CD + ", PRICE=" + PRICE + ", INFO=" + INFO + ", STATUS=" + STATUS
				+ ", REGDATE=" + REGDATE + ", AREA=" + AREA + ", LOCATION=" + LOCATION + ", MAINPHOTO=" + MAINPHOTO
				+ ", PHOTO=" + PHOTO + "]";
	}
	
	
	
}
