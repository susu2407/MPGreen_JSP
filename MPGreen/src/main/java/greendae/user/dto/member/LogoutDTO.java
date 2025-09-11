package greendae.user.dto.member;

public class LogoutDTO {
	
	// 필요한 아이디, 비번에 해당되는 변수 선언
	private String s_id;		// 학생 아이디(학번)
	private String s_id_num;	// 학생 비밀번호(주민번호/뒷자리)
	private String p_id;		// 교수 아이디(교수번호)
	private String p_id_num;	// 교수 비밀번호(주민번호/뒷자리)
	private String u_id;		// 일반 아이디(아이디)
	private String pass;		// 일반 비밀번호(비밀번호)
	
	// 게터 : 필드의 값을 가져올 때
	// 세터 : 필드에 값을 설정할 때
	public String getS_id_num() {
		return s_id_num;
	}
	public void setS_id_num(String s_id_num) {
		this.s_id_num = s_id_num;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_id_num() {
		return p_id_num;
	}
	public void setP_id_num(String p_id_num) {
		this.p_id_num = p_id_num;
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
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getId_num() {
		return s_id_num;
	}
	public void setId_num(String id_num) {
		this.s_id_num = id_num;
	}

	
	
	
}
