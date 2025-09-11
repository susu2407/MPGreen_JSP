package greendae.user.dto.member;

//로그인 '요청' 정보
public class LoginDTO {
	
	// 아이디와 비밀번호 변수
    private String id;
    private String pw;
    
    // 역할 변수 (학생, 교수, 일반인 구분용)
 	private String role;
 	
    // Getters and Setters // 게터 : 필드의 값을 가져올 때 // 세터 : 필드에 값을 설정할 때
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return pw;
	}

	public void setPassword(String pw) {
		this.pw = pw;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
 	
}