package greendae.user.dao.academics;

import java.util.ArrayList;
import java.util.List;

import greendae.user.dto.academics.AcademicsDTO;
import greendae.util.DBHelper;

public class AcademicsDAO extends DBHelper{
	
	private AcademicsDAO() {}
	
	public List<AcademicsDTO> selectAll() {
		
		List<AcademicsDTO> dtoList = new ArrayList<AcademicsDTO>();	 

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(null // SELECT DEPARTMENT_NAME, DEAN, CONTACT_PHONE FROM DEPARTMENT;);	
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				AcademicsDTO dto = new AcademicsDTO();
				dto.setDep_name(rs.getString(3));
				dto.setDean(rs.getString(7));
				dto.setDep_tel(rs.getString(8));
//				dto.setRemark(rs.getString(4));
				dtoList.add(dto);
			}
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}
	
	

}
