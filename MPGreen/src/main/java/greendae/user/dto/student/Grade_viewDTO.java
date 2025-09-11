package greendae.user.dto.student;

public class Grade_viewDTO {

	private String c_code;
	private String course_code;
	private String grade;
	private String name;     
	private String completion_type;
	private float score;
	private String c_rank;
	private int credit;
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	public String getCourse_code() {
		return course_code;
	}
	public void setCourse_code(String course_code) {
		this.course_code = course_code;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompletion_type() {
		return completion_type;
	}
	public void setCompletion_type(String completion_type) {
		this.completion_type = completion_type;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public String getC_rank() {
		return c_rank;
	}
	public void setC_rank(String c_rank) {
		this.c_rank = c_rank;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	@Override
	public String toString() {
		return "Grade_viewDTO [c_code=" + c_code + ", course_code=" + course_code + ", grade=" + grade + ", name="
				+ name + ", completion_type=" + completion_type + ", score=" + score + ", c_rank=" + c_rank
				+ ", credit=" + credit + "]";
	}
	
	
}