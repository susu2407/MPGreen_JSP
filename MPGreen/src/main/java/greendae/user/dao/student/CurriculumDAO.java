package greendae.user.dao.student;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import greendae.user.dto.student.CurriculumDTO;
import greendae.util.DBHelper;
import greendae.util.Sql_p;

public class CurriculumDAO extends DBHelper{
	
	private final static CurriculumDAO INSTANCE = new CurriculumDAO();
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	public static CurriculumDAO getInstance() {
		return INSTANCE;
	}
	
	private CurriculumDAO() {}
	
	public List<CurriculumDTO> selectAll() {
		
		List<CurriculumDTO> dtoList = new ArrayList<CurriculumDTO>();	 

		try {
			conn = getConnection();
			stmt = conn.createStatement(); 
			rs = stmt.executeQuery(Sql_p.SELECT_ALL_CURRICULUM_MAJOR);
			
			while(rs.next()) {
				CurriculumDTO dto = new CurriculumDTO();
				dto.setGrade(rs.getString(1));
				dto.setCourse_code(rs.getString(2));
				dto.setCompletion_type(rs.getString(3));
				dto.setCourse_name(rs.getString(4));
				dto.setCredit(rs.getInt(5));
				dtoList.add(dto);
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}
	
	

}
