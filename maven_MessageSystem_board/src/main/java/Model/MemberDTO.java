package Model;

public class MemberDTO {

	// 회원의 정보를 관리할 수 있는 DTO 
	
	private String email;
	private String pw;
	private String tel;
	private String address;

	// 생성자 메소드 만들기 alt+shift+s -> constructer using fields
	public MemberDTO(String email, String pw, String tel, String address) {
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	}
	
	// 생성자 메소드 - 로그인
	public MemberDTO(String email, String pw) {
		this.email = email;
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
