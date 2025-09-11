package greendae.user.service.student;

import java.util.List;

import greendae.user.dao.student.CurriculumDAO;
import greendae.user.dto.student.CurriculumDTO;

public enum CurriculumService {
	
	INSTANCE;
	
	private CurriculumDAO dao = CurriculumDAO.getInstance();
	
	public List<CurriculumDTO> findAll() {
		return dao.selectAll();
	}

}
