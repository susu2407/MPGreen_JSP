package greendae.user.dao.academics;

import java.util.ArrayList;
import java.util.List;

import greendae.user.dto.academics.AcademicsDTO;
import greendae.util.DBHelper;

public class AcademicsDAO extends DBHelper{
	
	private AcademicsDAO() {}
	
	public List<AcademicsDTO> SelectAll() {
		
		List<AcademicsDTO> dtoList = new ArrayList<AcademicsDTO>();	 

		/*
		try {
			conn = getConnection();
			psmt = conn.prepareStatement();
			rs = psmt.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
		return null;
	}
	
	

}
