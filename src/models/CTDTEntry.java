package models;

public class CTDTEntry {
	private String maccdt;
	private String hocphi;
	private String tenctdt;
	public String getMaccdt() {
		return maccdt;
	}
	public void setMaccdt(String maccdt) {
		this.maccdt = maccdt;
	}
	public String getTenctdt() {
		return tenctdt;
	}
	public void setTenctdt(String tenctdt) {
		this.tenctdt = tenctdt;
	}
	public String getHocphi() {
		return hocphi;
	}
	public void setHocphi(String hocphi) {
		this.hocphi = hocphi;
	}
	public CTDTEntry(String maccdt, String tenctdt, String hocphi) {
		super();
		this.maccdt = maccdt;
		this.tenctdt = tenctdt;
		this.hocphi = hocphi;
	}
	
}
