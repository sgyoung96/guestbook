package guestbook;

/*

[테이블 및 시퀀스 생성 쿼리]

CREATE TABLE GUESTBOOK (
 NUM NUMBER PRIMARY KEY,
 WRITER VARCHAR2(20) NOT NULL,
 W_DATE DATE,
 PWD VARCHAR2(20) NOT NULL,
 CONTENT VARCHAR2(100),
 CNT NUMBER
);

CREATE SEQUENCE SEQ_GUESTBOOK;


*/
public class GuestBookVo {
	private double num;
	private String writer;
	private String w_date;
	private String pwd;
	private String content;
	private double number;
	
	public GuestBookVo() {
		super();
	}
	
	public GuestBookVo(double num, String writer, String w_date, String pwd, String content, double number) {
		super();
		this.num = num;
		this.writer = writer;
		this.w_date = w_date;
		this.pwd = pwd;
		this.content = content;
		this.number = number;
	}
	
	public double getNum() {
		return num;
	}
	public void setNum(double num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getW_date() {
		return w_date;
	}
	public void setW_date(String w_date) {
		this.w_date = w_date;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getNumber() {
		return number;
	}
	public void setNumber(double number) {
		this.number = number;
	}
	
	@Override
	public String toString() {
		return "GuestBookVo [num=" + num + ", writer=" + writer + ", w_date=" + w_date + ", pwd=" + pwd + ", content="
				+ content + ", number=" + number + "]";
	}
}