package models;

public class ThongTinCaNhanEntry {
	private String hoten;
	private String sdt;
	private String diachi;
	private String nghenghiep;
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
	public ThongTinCaNhanEntry(String hoten, String sdt, String diachi, String nghenghiep) {
		this.hoten = hoten;
		this.sdt = sdt;
		this.diachi = diachi;
		this.nghenghiep = nghenghiep;
	}
	
	
}
