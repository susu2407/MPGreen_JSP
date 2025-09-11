package greendae.user.service.academics;

import java.util.List;

import greendae.user.dao.academics.AcademicsDAO;
import greendae.user.dto.academics.AcademicsDTO;

public enum AcademicsService {

	INSTANCE;
	
	private AcademicsDAO dao = AcademicsDAO.getInstance();
	
	public List<AcademicsDTO> findAll() {
		return dao.selectAll();
	}
}
