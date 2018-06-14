package models;

public class DangNhapEntry {
	
	private String tendangnhap;
	private String matkhau;
	private String quyenhan;
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

	private String hoten;
	private String sdt;
	private String diachi;
	private String nghenghiep;
	public DangNhapEntry(String tendangnhap, String matkhau, String quyenhan, String hoten, String sdt, String diachi,
			String nghenghiep) {
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
		this.quyenhan = quyenhan;
		this.hoten = hoten;
		this.sdt = sdt;
		this.diachi = diachi;
		this.nghenghiep = nghenghiep;
	}

	public DangNhapEntry(String tendangnhap, String hoten, String sdt, String diachi, String nghenghiep) {
		this.tendangnhap = tendangnhap;
		this.hoten = hoten;
		this.sdt = sdt;
		this.diachi = diachi;
		this.nghenghiep = nghenghiep;
	}
	
	public DangNhapEntry(  String lophoc, String tendangnhap, String hoten, String sdt) {
		this.lophoc = lophoc;
		this.tendangnhap = tendangnhap;
		this.hoten = hoten;
		this.sdt = sdt;

	}

	private String lophoc;

	public String getLophoc() {
		return lophoc;
	}



	public void setLophoc(String lophoc) {
		this.lophoc = lophoc;
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
	public void setMatkhau(String matkau) {
		this.matkhau = matkau;
	}
	public String getQuyenhan() {
		return quyenhan;
	}
	public void setQuyenhan(String quyenhan) {
		this.quyenhan = quyenhan;
	}

	public DangNhapEntry(String tendangnhap, String matkhau, String quyenhan) {

		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
		this.quyenhan = quyenhan;
	}
	public DangNhapEntry(String tendangnhap, String lophoc) {
		super();
		this.tendangnhap = tendangnhap;
		this.lophoc = lophoc;
	}
	

}
