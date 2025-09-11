package greendae.user.dao.academics;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import greendae.user.dto.academics.AcademicsDTO;
import greendae.util.DBHelper;
import greendae.util.Sql_p;

public class AcademicsDAO extends DBHelper{
	
	private final static AcademicsDAO INSTANCE = new AcademicsDAO();
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	public static AcademicsDAO getInstance() {
		return INSTANCE;
	}
	
	private AcademicsDAO() {}
	
	public List<AcademicsDTO> selectAll() {
		
		List<AcademicsDTO> dtoList = new ArrayList<AcademicsDTO>();	 

		try {
			conn = getConnection();
			stmt = conn.createStatement(); 
			rs = stmt.executeQuery(Sql_p.SELECT_ALL_ACADEMICS);
			
			while(rs.next()) {
				AcademicsDTO dto = new AcademicsDTO();
				dto.setDepartment_name(rs.getString(1));
				dto.setDean(rs.getString(2));
				dto.setContact_phone(rs.getString(3));
				dtoList.add(dto);
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}
	
	

}
