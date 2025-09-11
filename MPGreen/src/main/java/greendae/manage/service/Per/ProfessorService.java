package greendae.manage.service.Per;
import java.util.List;

import greendae.manage.dao.Per.ProfessorDAO;
import greendae.manage.dto.Per.ProfessorDTO;

public enum ProfessorService {
	
	INSTANCE;
	
	private ProfessorDAO dao = ProfessorDAO.getInstance();
	
	public List<ProfessorDTO> findAll() {
		return dao.selectAllProfessor();
	}

}
