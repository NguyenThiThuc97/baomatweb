package models;

public class TaiKhoanQuyenHan {
	private String tendangnhap;
	private String quyenhan;
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getQuyenhan() {
		return quyenhan;
	}
	public void setQuyenhan(String quyenhan) {
		this.quyenhan = quyenhan;
	}
	public TaiKhoanQuyenHan(String tendangnhap, String quyenhan) {
		this.tendangnhap = tendangnhap;
		this.quyenhan = quyenhan;
	}
	
	
}
