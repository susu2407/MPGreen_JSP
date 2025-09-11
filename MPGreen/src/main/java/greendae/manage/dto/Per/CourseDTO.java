package greendae.manage.dto.Per;

public class CourseDTO {
	
	private	String	course_code;
	private	String	college;
	private	int	department_id;
	private	String	grade;
	private	String	semester;
	private	String	credit;
	private	String	completion_type;
	private	int	professor;
	private	String	course_name;
	private	String	course_desc;
	private	String	class_period;
	private	String	class_time;
	private	String	end_time;
	private	String	class_day;
	private	String	evaluation_method;
	private	String	textbook;
	private	String	classroom;
	private	String	max_capacity;
	
	@Override
	public String toString() {
		return "CourseDTO [course_code=" + course_code + ", college=" + college + ", department_id=" + department_id
				+ ", grade=" + grade + ", semester=" + semester + ", credit=" + credit + ", completion_type="
				+ completion_type + ", professor=" + professor + ", course_name=" + course_name + ", course_desc="
				+ course_desc + ", class_period=" + class_period + ", class_time=" + class_time + ", end_time="
				+ end_time + ", class_day=" + class_day + ", evaluation_method=" + evaluation_method + ", textbook="
				+ textbook + ", classroom=" + classroom + ", max_capacity=" + max_capacity + "]";
	}
	
	
	public String getCourse_code() {
		return course_code;
	}
	public void setCourse_code(String course_code) {
		this.course_code = course_code;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public int getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getCompletion_type() {
		return completion_type;
	}
	public void setCompletion_type(String completion_type) {
		this.completion_type = completion_type;
	}
	public int getProfessor() {
		return professor;
	}
	public void setProfessor(int professor) {
		this.professor = professor;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_desc() {
		return course_desc;
	}
	public void setCourse_desc(String course_desc) {
		this.course_desc = course_desc;
	}
	public String getClass_period() {
		return class_period;
	}
	public void setClass_period(String class_period) {
		this.class_period = class_period;
	}
	public String getClass_time() {
		return class_time;
	}
	public void setClass_time(String class_time) {
		this.class_time = class_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getClass_day() {
		return class_day;
	}
	public void setClass_day(String class_day) {
		this.class_day = class_day;
	}
	public String getEvaluation_method() {
		return evaluation_method;
	}
	public void setEvaluation_method(String evaluation_method) {
		this.evaluation_method = evaluation_method;
	}
	public String getTextbook() {
		return textbook;
	}
	public void setTextbook(String textbook) {
		this.textbook = textbook;
	}
	public String getClassroom() {
		return classroom;
	}
	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
	public String getMax_capacity() {
		return max_capacity;
	}
	public void setMax_capacity(String max_capacity) {
		this.max_capacity = max_capacity;
	}
	
	
	
	
	
	

}
