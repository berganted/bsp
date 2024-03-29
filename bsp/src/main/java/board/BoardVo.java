package board;

import java.sql.Timestamp;

import util.CommonVo;

public class BoardVo extends CommonVo {
	
	private int q_no;
	private int q_cate_no;
	private int m_no;
	private String q_title;
	private String q_content;
	private Timestamp q_regdate;
	private int q_readcount;
	
	public  BoardVo() {

		this.pageRow = 5;
		this.reqPage = 1;
		this.pageRange = 5;
		this.orderby ="q_regdate";
		this.direct = "DESC";
	}

	private String q_Filename_org;	// 사용자가첨부한 원본파일명
	private String q_Filename_real;	// 서버에 저장된 실제파일명
	
	private String isDel;
	private String name;
	private int comment_count;
	
	private int q_gno;				// 그룹번호
	private int q_ono;				// 순서
	private int q_nested;			// 들여쓰기
	
	public int getQ_gno() {
		return q_gno;
	}
	public void setQ_gno(int q_gno) {
		this.q_gno = q_gno;
	}
	public int getQ_ono() {
		return q_ono;
	}
	public void setQ_ono(int q_ono) {
		this.q_ono = q_ono;
	}
	public int getQ_nested() {
		return q_nested;
	}
	public void setQ_nested(int q_nested) {
		this.q_nested = q_nested;
	}
	public int getComment_count() {
		return comment_count;
	}
	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}
	public int getQ_no() {
		return q_no;
	}
	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}
	public int getQ_cate_no() {
		return q_cate_no;
	}
	public void setQ_cate_no(int q_cate_no) {
		this.q_cate_no = q_cate_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public Timestamp getQ_regdate() {
		return q_regdate;
	}
	public void setQ_regdate(Timestamp q_regdate) {
		this.q_regdate = q_regdate;
	}
	public int getQ_readcount() {
		return q_readcount;
	}
	public void setQ_readcount(int q_readcount) {
		this.q_readcount = q_readcount;
	}
	public String getQ_Filename_org() {
		return q_Filename_org;
	}
	public void setQ_Filename_org(String q_Filename_org) {
		this.q_Filename_org = q_Filename_org;
	}
	public String getQ_Filename_real() {
		return q_Filename_real;
	}
	public void setQ_Filename_real(String q_Filename_real) {
		this.q_Filename_real = q_Filename_real;
	}
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
