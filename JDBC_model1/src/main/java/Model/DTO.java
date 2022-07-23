package Model;

public class DTO {
	
	// 회원의 정보를 관리 할 수 있는 설계도 !
	// 정보 -> id,pw,name -> id,pw를 통한 로그인 서비스 / id,pw,name을 통한 회원가입 서비스
	// -> 회원 정보에 대한 수정, 삭제 .. 기능들을 만들기 위한 설계도가 탄생!
	
	// 1. 필드
	private String id;
	private String pw;
	private String name;
	
	// 2. 메소드
	// - 기능에 따라 구조가 바뀌는 생성자 메소드! -> login용 
	// - private에 따라 내부적으로 정보를 확인하고 수정할 수 있는 메소드 ! -> getter/setter
	
	// 회원 가입에 따른 생성자 메소드!
	public DTO(String id, String pw, String name) {
		this.id=id;
		this.pw=pw;
		this.name=name;
	}
	
	// 로그인에 따른 생성자 메소드!
	public DTO(String id, String pw) {
		this.id=id;
		this.pw=pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
