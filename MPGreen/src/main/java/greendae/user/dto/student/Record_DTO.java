package greendae.user.dto.student;

public class Record_DTO {
	
	private String s_id;
	private String name;
	private String phone;
	private int admission_grade;
	private int admission_semester;
	private String id_num;
	private String email;
	private String status;
	private int credit;
	private String completion_type;
	private float per_score;
	private String class_period;
	private String grade;
	private int semester;
	private float score;
	
	
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAdmission_grade() {
		return admission_grade;
	}
	public void setAdmission_grade(int admission_grade) {
		this.admission_grade = admission_grade;
	}
	public int getAdmission_semester() {
		return admission_semester;
	}
	public void setAdmission_semester(int admission_semester) {
		this.admission_semester = admission_semester;
	}
	public String getId_num() {
		return id_num;
	}
	public void setId_num(String id_num) {
		this.id_num = id_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public String getCompletion_type() {
		return completion_type;
	}
	public void setCompletion_type(String completion_type) {
		this.completion_type = completion_type;
	}
	public float getPer_score() {
		return per_score;
	}
	public void setPer_score(float per_score) {
		this.per_score = per_score;
	}
	public String getClass_period() {
		return class_period;
	}
	public void setClass_period(String class_period) {
		this.class_period = class_period;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "StudentDTO_record [s_id=" + s_id + ", name=" + name + ", phone=" + phone + ", admission_grade="
				+ admission_grade + ", admission_semester=" + admission_semester + ", id_num=" + id_num + ", email="
				+ email + ", status=" + status + ", credit=" + credit + ", completion_type=" + completion_type
				+ ", per_score=" + per_score + ", class_period=" + class_period + ", grade=" + grade + ", semester="
				+ semester + ", score=" + score + "]";
	}

	
	
}
