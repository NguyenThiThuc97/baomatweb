package models;

public class DangKiEntry {
	private String tendangnhap;
	private String matkhau;
	private String hoten;
	private String sdt;
	private String diachi;
	private String nghenghiep;
	public DangKiEntry(String tendangnhap, String matkhau, String hoten, String sdt, String diachi, String nghenghiep) {
		super();
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
		this.hoten = hoten;
		this.sdt = sdt;
		this.diachi = diachi;
		this.nghenghiep = nghenghiep;
	}
	
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getNghenghiep() {
		return nghenghiep;
	}
	public void setNghenghiep(String nghenghiep) {
		this.nghenghiep = nghenghiep;
	}
	
}
