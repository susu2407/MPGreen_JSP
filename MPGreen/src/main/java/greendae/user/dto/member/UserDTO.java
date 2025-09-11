package greendae.user.dto.member;

// 학생, 교수, 일반인 정보를 모두 담을 수 있는 DTO
public class UserDTO {
	
	// 학생 테이블의 컬럼
	private String s_id;
	private String id_num;
	
	// 교수 테이블의 컬럼
	private String p_id;
	
	// 일반인 테이블의 컬럼
	private String u_id;
	private String pass;
	
	private String user_role; // 사용자의 역할을 저장할 변수 (예: "student", "professor", "user")

	// 모든 필드에 대한 Getter와 Setter
	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getId_num() {
		return id_num;
	}

	public void setId_num(String id_num) {
		this.id_num = id_num;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getUser_role() {
		return user_role;
	}

	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}

	
}