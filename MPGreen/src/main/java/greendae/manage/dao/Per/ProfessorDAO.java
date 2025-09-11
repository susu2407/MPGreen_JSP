package greendae.manage.dao.Per;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import greendae.manage.dto.Per.ProfessorDTO;
import greendae.util.DBHelper2;

public class ProfessorDAO extends DBHelper2{

	private static final ProfessorDAO INSTANCE = new ProfessorDAO();
	public static ProfessorDAO getInstance() {
		return INSTANCE;
	}
	private ProfessorDAO() {};
	//private final String dbcp = "jdbc/greendae2";
	
public List<ProfessorDTO> selectAllProfessor() {
		
		List<ProfessorDTO> dtoList = new ArrayList<>();
		
		// try-with-resources 구문 사용 (conn, stmt, rs를 자동으로 close 해줌)
		try (
			Connection conn = getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM professor;");
		) {
			while(rs.next()){
				ProfessorDTO dto = new ProfessorDTO();
				dto.setP_id(rs.getInt("p_id"));
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
				dto.setGraduated_university(rs.getString("graduated_university"));
				dto.setAcademic_field(rs.getString("academic_field"));
				dto.setGraduation_date(rs.getString("graduation_date"));
				dto.setDegree(rs.getString("degree"));
				dto.setCollege_in_charge(rs.getString("college_in_charge"));
				dto.setDepartment(rs.getInt("department"));
				dto.setHire_date(rs.getString("hire_date"));
				dto.setP_status(rs.getString("p_status"));
				dtoList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return dtoList;
	}
			

}
