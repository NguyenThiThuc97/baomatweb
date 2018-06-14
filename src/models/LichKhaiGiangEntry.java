package models;

public class LichKhaiGiangEntry {
	private String malop;
	private String thoigian;
	private String ngaykhaigiang;
	private String phonghoc;
	private String thoigianhoc;
	private String ctdt;
	public String getSoluong() {
		return soluong;
	}

	public void setSoluong(String soluong) {
		this.soluong = soluong;
	}
	private String soluong;
	

	public LichKhaiGiangEntry(String malop, String ctdt, String thoigian, String ngaykhaigiang, String phonghoc,
			String thoigianhoc, String soluong ) {
		this.malop = malop;
		this.ctdt = ctdt;
		this.thoigian = thoigian;
		this.ngaykhaigiang = ngaykhaigiang;
		this.phonghoc = phonghoc;
		this.thoigianhoc = thoigianhoc;
		this.soluong = soluong;
		
	}
	
	public LichKhaiGiangEntry(String malop, String thoigian, String ngaykhaigiang, String phonghoc,
			String thoigianhoc) {
		this.malop = malop;
		this.thoigian = thoigian;
		this.ngaykhaigiang = ngaykhaigiang;
		this.phonghoc = phonghoc;
		this.thoigianhoc = thoigianhoc;
	}
	

	public LichKhaiGiangEntry(String malop, String ctdt, String thoigian, String ngaykhaigiang, String phonghoc, String thoigianhoc
			) {
		super();
		this.malop = malop;
		this.ctdt = ctdt;
		this.thoigian = thoigian;
		this.ngaykhaigiang = ngaykhaigiang;
		this.phonghoc = phonghoc;
		this.thoigianhoc = thoigianhoc;
		
	}

	public String getCtdt() {
		return ctdt;
	}

	public void setCtdt(String ctdt) {
		this.ctdt = ctdt;
	}
	public String getMalop() {
		return malop;
	}
	public void setMalop(String malop) {
		this.malop = malop;
	}
	public String getThoigian() {
		return thoigian;
	}
	public void setThoigian(String thoigian) {
		this.thoigian = thoigian;
	}
	public String getNgaykhaigiang() {
		return ngaykhaigiang;
	}
	public void setNgaykhaigiang(String ngaykhaigiang) {
		this.ngaykhaigiang = ngaykhaigiang;
	}
	public String getPhonghoc() {
		return phonghoc;
	}
	public void setPhonghoc(String phonghoc) {
		this.phonghoc = phonghoc;
	}
	public String getThoigianhoc() {
		return thoigianhoc;
	}
	public void setThoigianhoc(String thoigianhoc) {
		this.thoigianhoc = thoigianhoc;
	}
	
}
