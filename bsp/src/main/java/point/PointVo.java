package point;

import java.sql.Timestamp;

import util.CommonVo;

public class PointVo extends CommonVo {
	private int p_no;
	private int m_no;
	private Timestamp p_regdate;
	private String p_state;
	private int p_usage;
	private int p_used;
	private String p_content;
	private int pb_no;
	
	public int getPb_no() {
		return pb_no;
	}
	public void setPb_no(int pb_no) {
		this.pb_no = pb_no;
	}
	public int getP_used() {
		return p_used;
	}
	public void setP_used(int p_used) {
		this.p_used = p_used;
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public Timestamp getP_regdate() {
		return p_regdate;
	}
	public void setP_regdate(Timestamp p_regdate) {
		this.p_regdate = p_regdate;
	}
	public String getP_state() {
		return p_state;
	}
	public void setP_state(String p_state) {
		this.p_state = p_state;
	}
	public int getP_usage() {
		return p_usage;
	}
	public void setP_usage(int p_usage) {
		this.p_usage = p_usage;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
}
