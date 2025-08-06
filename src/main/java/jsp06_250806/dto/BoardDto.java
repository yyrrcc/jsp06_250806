package jsp06_250806.dto;

// 글 1개 정보를 저장 할 DTO 클래스
public class BoardDto {
	private int num; // 게시글 번호
	private String title; // 게시글 제목
	private String writer; // 글쓴이
	private String date; // 글쓴 날짜
	
	public BoardDto() {
		super();
	}
	
	public BoardDto(int num, String title, String writer, String date) {
		super();
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.date = date;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	
}
