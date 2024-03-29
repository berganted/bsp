package book;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import util.CommonVo;

public class BookVo extends CommonVo {

	private int b_no;
	private int b_imgno;
	private int b_ctgno1;
	private int b_ctgno2;
	private String b_title;
	private String b_content;
	private String b_author;
	private String b_publisher;
	private String b_isbn;
	private String b_stock;
	private Timestamp b_regdate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date b_intodate;
	private int b_price;
	private int b_views;
	private String b_index;
	private String b_pages;
	private String b_introauthor;
	private String b_introbook;
	private int b_point;
	private int r_no;
	private String b_imgmain;
	
	private int b_ctgno2key;
	private String b_ctgname2;
	private int ad_no;
	private String ad_img;
	private String b_ctgdetail;
	private String p_word;
	private int p_no;
	private Timestamp p_date;
	private int cnt;
	private int io_amount;
	private float avg;
	private int rcnt;
	private int tot;
	private int isorder;
	private int isreview;

	
	public int getIsreview() {
		return isreview;
	}

	public void setIsreview(int isreview) {
		this.isreview = isreview;
	}

	public int getIsorder() {
		return isorder;
	}

	public void setIsorder(int isorder) {
		this.isorder = isorder;
	}



	public int getTot() {
		return tot;
	}



	public void setTot(int tot) {
		this.tot = tot;
	}



	public int getRcnt() {
		return rcnt;
	}



	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}



	public float getAvg() {
		return avg;
	}



	public void setAvg(float avg) {
		this.avg = avg;
	}



	public int getIo_amount() {
		return io_amount;
	}



	public void setIo_amount(int io_amount) {
		this.io_amount = io_amount;
	}



	public int getCnt() {
		return cnt;
	}



	public void setCnt(int cnt) {
		this.cnt = cnt;
	}



	public int getP_no() {
		return p_no;
	}



	public void setP_no(int p_no) {
		this.p_no = p_no;
	}



	public Timestamp getP_date() {
		return p_date;
	}



	public void setP_date(Timestamp p_date) {
		this.p_date = p_date;
	}



	public String getP_word() {
		return p_word;
	}



	public void setP_word(String p_word) {
		this.p_word = p_word;
	}



	public String getB_ctgdetail() {
		return b_ctgdetail;
	}



	public void setB_ctgdetail(String b_ctgdetail) {
		this.b_ctgdetail = b_ctgdetail;
	}
	public BookVo() {
		this.pageRow = 10;
		this.reqPage = 1;
		this.pageRange = 10;
		this.orderby ="b_regdate";
		this.direct = "DESC";
	}
	
	public int getAd_no() {
		return ad_no;
	}

	public void setAd_no(int ad_no) {
		this.ad_no = ad_no;
	}

	public String getAd_img() {
		return ad_img;
	}

	public void setAd_img(String ad_img) {
		this.ad_img = ad_img;
	}

	public int getB_ctgno2key() {
		return b_ctgno2key;
	}

	public void setB_ctgno2key(int b_ctgno2key) {
		this.b_ctgno2key = b_ctgno2key;
	}

	public String getB_ctgname2() {
		return b_ctgname2;
	}

	public void setB_ctgname2(String b_ctgname2) {
		this.b_ctgname2 = b_ctgname2;
	}

	public String getB_imgmain() {
		return b_imgmain;
	}
	public void setB_imgmain(String b_imgmain) {
		this.b_imgmain = b_imgmain;
	}
	public int getB_point() {
		return b_point;
	}
	public void setB_point(int b_point) {
		this.b_point = b_point;
	}
	public String getOrderby() {
		return orderby;
	}
	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}
	public String getDirect() {
		return direct;
	}
	public void setDirect(String direct) {
		this.direct = direct;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	
	public int getB_imgno() {
		return b_imgno;
	}

	public void setB_imgno(int b_imgno) {
		this.b_imgno = b_imgno;
	}



	public int getB_ctgno1() {
		return b_ctgno1;
	}



	public void setB_ctgno1(int b_ctgno1) {
		this.b_ctgno1 = b_ctgno1;
	}



	public int getB_ctgno2() {
		return b_ctgno2;
	}



	public void setB_ctgno2(int b_ctgno2) {
		this.b_ctgno2 = b_ctgno2;
	}



	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_author() {
		return b_author;
	}
	public void setB_author(String b_author) {
		this.b_author = b_author;
	}
	public String getB_publisher() {
		return b_publisher;
	}
	public void setB_publisher(String b_publisher) {
		this.b_publisher = b_publisher;
	}
	public String getB_isbn() {
		return b_isbn;
	}
	public void setB_isbn(String b_isbn) {
		this.b_isbn = b_isbn;
	}
	public String getB_stock() {
		return b_stock;
	}
	public void setB_stock(String b_stock) {
		this.b_stock = b_stock;
	}
	public Date getB_regdate() {
		return b_regdate;
	}
	public void setB_regdate(Timestamp b_regdate) {
		this.b_regdate = b_regdate;
	}
	public Date getB_intodate() {
		return b_intodate;
	}
	public void setB_intodate(Date b_intodate) {
		this.b_intodate = b_intodate;
	}
	public int getB_price() {
		return b_price;
	}
	public void setB_price(int b_price) {
		this.b_price = b_price;
	}
	public int getB_views() {
		return b_views;
	}
	public void setB_views(int b_views) {
		this.b_views = b_views;
	}
	public String getB_index() {
		return b_index;
	}
	public void setB_index(String b_index) {
		this.b_index = b_index;
	}
	public String getB_pages() {
		return b_pages;
	}
	public void setB_pages(String b_pages) {
		this.b_pages = b_pages;
	}
	public String getB_introauthor() {
		return b_introauthor;
	}
	public void setB_introauthor(String b_introauthor) {
		this.b_introauthor = b_introauthor;
	}
	public String getB_introbook() {
		return b_introbook;
	}
	public void setB_introbook(String b_introbook) {
		this.b_introbook = b_introbook;
	}



	public int getR_no() {
		return r_no;
	}



	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	
	
	/*
	 * public String getAd_img() { return ad_img; }
	 * 
	 * public void setAd_img(String ad_img) { this.ad_img = ad_img; }
	 */
	
}	