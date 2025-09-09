package greendae.user.dto.academics;

public class AcademicsDTO {
	
	private String dep_name;
	private String pro_name;
	private String dep_no;
	private String remark;
	
	public String getDep_name() {
		return dep_name;
	}
	
	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}
	
	public String getPro_name() {
		return pro_name;
	}
	
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	
	public String getDep_no() {
		return dep_no;
	}
	
	public void setDep_no(String dep_no) {
		this.dep_no = dep_no;
	}
	
	public String getRemark() {
		return remark;
	}
	
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	@Override
	public String toString() {
		return "AcademicsDTO [dep_name=" + dep_name + ", pro_name=" + pro_name + ", dep_no=" + dep_no + ", remark=" + remark
				+ "]";
	}
	
	
	
	
	

}
