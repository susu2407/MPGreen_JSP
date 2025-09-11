package greendae.manage.dao.Per;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import greendae.manage.dto.Per.CourseDTO;
import greendae.util.DBHelper2;

public class CourseDAO extends DBHelper2{

	private static final CourseDAO INSTANCE = new CourseDAO();
	public static CourseDAO getInstance() {
		return INSTANCE;
	}
	private CourseDAO() {};

	
public List<CourseDTO> selectAllCourse() {
		
		List<CourseDTO> dtoList = new ArrayList<>();
		
		try (
			Connection conn = getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM course;");
		) {
			while(rs.next()){
				CourseDTO dto = new CourseDTO();
				
				dto.setCourse_code(rs.getString("course_code"));
				dto.setCollege(rs.getString("college"));
				dto.setDepartment_id(rs.getInt("department_id"));
				dto.setGrade(rs.getString("grade"));
				dto.setSemester(rs.getString("semester"));
				dto.setCredit(rs.getString("credit"));
				dto.setCompletion_type(rs.getString("completion_type"));
				dto.setProfessor(rs.getInt("professor"));
				dto.setCourse_name(rs.getString("course_name"));
				dto.setCourse_desc(rs.getString("course_desc"));
				dto.setClass_period(rs.getString("class_period"));
				dto.setClass_time(rs.getString("class_time"));
				dto.setEnd_time(rs.getString("end_time"));
				dto.setClass_day(rs.getString("class_day"));
				dto.setEvaluation_method(rs.getString("evaluation_method"));
				dto.setTextbook(rs.getString("textbook"));
				dto.setClassroom(rs.getString("classroom"));
				dto.setMax_capacity(rs.getString("max_capacity"));
								
				dtoList.add(dto);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return dtoList;
	}
			

}
