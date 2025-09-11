package greendae.user.dto.student;

public class CurriculumDTO {

    private String grade;
    private String course_code;
    private String completion_type; 
    private String course_name;
    private int credit;
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCourse_code() {
		return course_code;
	}
	public void setCourse_code(String course_code) {
		this.course_code = course_code;
	}
	public String getCompletion_type() {
		return completion_type;
	}
	public void setCompletion_type(String completion_type) {
		this.completion_type = completion_type;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	@Override
	public String toString() {
		return "CurriculumDTO [grade=" + grade + ", course_code=" + course_code + ", completion_type=" + completion_type
				+ ", course_name=" + course_name + ", credit=" + credit + "]";
	}
	
	
	
}