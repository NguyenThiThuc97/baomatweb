package models;

public class CacKhoaHocCuaToiEntry {
	private String malop;
	private String tenctdt;
	private String thoigian;
	private String phonghoc;
	private String hocphi;
	private String ngaykhaigiang;
	private String thoigianhoc;
	public String getMalop() {
		return malop;
	}
	public void setMalop(String malop) {
		this.malop = malop;
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
	public String getThoigian() {
		return thoigian;
	}
	public void setThoigian(String thoigian) {
		this.thoigian = thoigian;
	}
	public String getPhonghoc() {
		return phonghoc;
	}
	public void setPhonghoc(String phonghoc) {
		this.phonghoc = phonghoc;
	}
	public String getNgaykhaigiang() {
		return ngaykhaigiang;
	}
	public void setNgaykhaigiang(String ngaykhaigiang) {
		this.ngaykhaigiang = ngaykhaigiang;
	}
	public String getThoigianhoc() {
		return thoigianhoc;
	}
	public void setThoigianhoc(String thoigianhoc) {
		this.thoigianhoc = thoigianhoc;
	}
	public CacKhoaHocCuaToiEntry(String malop, String tenctdt, String thoigian, String phonghoc, String hocphi, String ngaykhaigiang,
			String thoigianhoc) {
		super();
		this.malop = malop;
		this.tenctdt = tenctdt;
		this.thoigian = thoigian;
		this.phonghoc = phonghoc;
		this.hocphi = hocphi;
		this.ngaykhaigiang = ngaykhaigiang;
		this.thoigianhoc = thoigianhoc;
	}
	public CacKhoaHocCuaToiEntry(String malop) {
		this.malop = malop;
	}
	
	
	
}
