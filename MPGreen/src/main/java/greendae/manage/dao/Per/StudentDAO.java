package greendae.manage.dao.Per;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import greendae.manage.dto.Per.StudentDTO;
import greendae.util.DBHelper2;

public class StudentDAO extends DBHelper2{

	private static final StudentDAO INSTANCE = new StudentDAO();
	public static StudentDAO getInstance() {
		return INSTANCE;
	}
	private StudentDAO() {};

	
public List<StudentDTO> selectAllStudent() {
		
		List<StudentDTO> dtoList = new ArrayList<>();
		
		try (
			Connection conn = getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM student;");
		) {
			while(rs.next()){
				StudentDTO dto = new StudentDTO();
				dto.setS_id(rs.getString("s_id"));
				dto.setId_num(rs.getString("id_num"));
				dto.setName(rs.getString("name"));
				dto.setE_name(rs.getString("e_name"));
				dto.setGender(rs.getString("gender"));
				dto.setCountry(rs.getString("country"));
				dto.setPhone(rs.getString("phone"));
				dto.setEmail(rs.getString("email"));
				dto.setPostal_code(rs.getString("postal_code"));
				dto.setAddr(rs.getString("addr"));
				dto.setDetail_addr(rs.getString("detail_addr"));
				dto.setAdmission_year(rs.getString("admission_year"));
				dto.setGraduation_year(rs.getString("graduation_year"));
				dto.setAdmission_type(rs.getString("admission_type"));
				dto.setCollege(rs.getString("college"));
				dto.setDepartment(rs.getInt("department"));
				dto.setAdmission_grade(rs.getInt("admission_grade"));
				dto.setAdmission_semester(rs.getInt("admission_semester"));
				dto.setAdvisor(rs.getInt("advisor"));
				dto.setS_status(rs.getString("s_status"));
				dtoList.add(dto);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return dtoList;
	}
			

}
