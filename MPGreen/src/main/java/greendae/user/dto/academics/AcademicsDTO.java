package greendae.user.dto.academics;

public class AcademicsDTO {
	
	private String dep_name;
	private String dean;
	private String dep_tel;
//	private String remark;
	
	public String getDep_name() {
		return dep_name;
	}
	
	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}
	
	public String getDean() {
		return dean;
	}
	
	public void setDean(String dean) {
		this.dean = dean;
	}
	
	public String getDep_tel() {
		return dep_tel;
	}
	
	public void setDep_tel(String dep_tel) {
		this.dep_tel = dep_tel;
	}
	
	/*public String getRemark() {
		return remark;
	}
	
	public void setRemark(String remark) {
		this.remark = remark;
	}*/
	
	@Override
	public String toString() {
		return "AcademicsDTO [dep_name=" + dep_name + ", dean=" + dean + ", dep_tel=" + dep_tel + /*", remark=" + remark
				+*/ "]";
	}
	
	
	
	
	

}
