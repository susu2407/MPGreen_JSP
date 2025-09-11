package greendae.user.dao.community;

import greendae.util.DBHelper;
import greendae.util.Sql;
import greendae.user.dto.community.CboardDTO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class CboardDAO extends DBHelper {

    private static final CboardDAO INSTANCE = new CboardDAO();
    public static CboardDAO getInstance() {
        return INSTANCE;
    }
    private CboardDAO() {}

    // ==========================
    // 글 등록
    // ==========================
    public int insert(CboardDTO dto) {
        int boardId = 0;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.INSERT_CBOARD, Statement.RETURN_GENERATED_KEYS);

            psmt.setString(1, dto.getCategory());
            psmt.setString(2, dto.getTitle());
            psmt.setString(3, dto.getContent());
            psmt.setString(4, dto.getWriterType());
            psmt.setString(5, dto.getWriterId());
            psmt.setString(6, dto.getNewsType());
            psmt.setObject(7, dto.isSecret() ? 1 : null);
            psmt.setString(8, dto.getQnaStatus());
            psmt.setString(9, dto.getAnswerContent());

            psmt.executeUpdate();

            rs = psmt.getGeneratedKeys();
            if (rs.next()) {
                boardId = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { closeAll(); } catch (SQLException e) { e.printStackTrace(); }
        }
        return boardId;
    }



    // ==========================
    // 단일 글 조회
    // ==========================
    public CboardDTO selectById(int boardId) {
        CboardDTO dto = null;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.SELECT_CBOARD_BY_ID);
            psmt.setInt(1, boardId);
            rs = psmt.executeQuery();
            if (rs.next()) {
                dto = mapResultSetToDTO(rs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
				closeAll();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return dto;
    }

    // ==========================
    // 조회수 증가
    // ==========================
    public void updateViewCount(int boardId) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.UPDATE_VIEW_COUNT);
            psmt.setInt(1, boardId);
            psmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
				closeAll();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
    }

    // ==========================
    // 글 수정 (writer_id 검증)
    // ==========================
    public int update(CboardDTO dto) {
        int result = 0;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.UPDATE_CBOARD);
            psmt.setString(1, dto.getTitle());
            psmt.setString(2, dto.getContent());
            psmt.setInt(3, dto.getBoardId());
            psmt.setString(4, dto.getWriterId()); // 본인 글만 수정
            result = psmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
				closeAll();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return result;
    }

    // ==========================
    // 글 삭제 (댓글/파일 → 글)
    // ==========================
    public int delete(int boardId, String writerId) {
        int result = 0;
        try {
            conn = getConnection();

            // 댓글 삭제
            psmt = conn.prepareStatement("DELETE FROM cboard_comment WHERE board_id=?");
            psmt.setInt(1, boardId);
            psmt.executeUpdate();

            // 파일 삭제
            psmt = conn.prepareStatement("DELETE FROM cboard_file WHERE board_id=?");
            psmt.setInt(1, boardId);
            psmt.executeUpdate();

            // 글 삭제 (writer_id 검증)
            psmt = conn.prepareStatement(Sql.DELETE_CBOARD);
            psmt.setInt(1, boardId);
            psmt.setString(2, writerId);
            result = psmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
				closeAll();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return result;
    }

	 // ==========================
	 // 카테고리별 목록 조회 (start는 LIMIT 시작점, 10개 고정)
	 // ==========================
    public int selectCountByCategory(String category) {
        int total = 0;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.COUNT_CBOARD_BY_CATEGORY);
            psmt.setString(1, category);
            rs = psmt.executeQuery();
            if (rs.next()) {
                total = rs.getInt(1); // ✅ 여기서 바로 꺼내고 끝
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { closeAll(); } catch (SQLException e) { e.printStackTrace(); }
        }
        return total;
    }



    // ==========================
    // 카테고리 + 검색 (페이징)
    // ==========================
    public List<CboardDTO> search(String category, String keyword, int start, int size) {
        List<CboardDTO> list = new ArrayList<>();
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.SEARCH_CBOARD);
            psmt.setString(1, category);
            psmt.setString(2, "%" + keyword + "%");
            psmt.setString(3, "%" + keyword + "%");
            psmt.setInt(4, start);
            psmt.setInt(5, size);
            rs = psmt.executeQuery();
            while (rs.next()) {
                list.add(mapResultSetToDTO(rs));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
				closeAll();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return list;
    }

    public int searchCount(String category, String keyword) {
        int total = 0;
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql.COUNT_SEARCH_CBOARD);
            psmt.setString(1, category);
            psmt.setString(2, "%" + keyword + "%");
            psmt.setString(3, "%" + keyword + "%");
            rs = psmt.executeQuery();
            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
				closeAll();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return total;
    }


    
    
    
    
	 // ==========================
	 // 카테고리별 글 목록 (페이징)
	 // ==========================
	 public List<CboardDTO> selectByCategoryWithPaging(String category, int start) {
	     List<CboardDTO> list = new ArrayList<>();
	     try {
	         conn = getConnection();
	         psmt = conn.prepareStatement(Sql.SELECT_CBOARD_BY_CATEGORY);
	         psmt.setString(1, category);
	         psmt.setInt(2, start);
	         psmt.setInt(3, 10); // 한 페이지 10개
	         rs = psmt.executeQuery();
	         while (rs.next()) {
	             list.add(mapResultSetToDTO(rs));
	         }
	     } catch (Exception e) {
	         e.printStackTrace();
	     } finally {
	         try { closeAll(); } catch (SQLException e) { e.printStackTrace(); }
	     }
	     return list;
	 }
    
    
	// ==========================
	// 공통 ResultSet → DTO 매핑
	// ==========================
	private CboardDTO mapResultSetToDTO(ResultSet rs) throws SQLException {
	    CboardDTO dto = new CboardDTO();

	    dto.setBoardId(rs.getInt("board_id"));
	    dto.setCategory(getSafeString(rs, "category"));
	    dto.setTitle(getSafeString(rs, "title"));

	    if (hasColumn(rs, "content")) {
	        dto.setContent(rs.getString("content"));
	    }

	    dto.setWriterType(getSafeString(rs, "writer_type"));
	    dto.setWriterId(getSafeString(rs, "writer_id"));
	    if (hasColumn(rs, "writer_name")) {
	        dto.setWriterName(rs.getString("writer_name"));
	    }

	    dto.setCreated_at(getSafeString(rs, "created_at"));
	    dto.setUpdated_at(getSafeString(rs, "updated_at"));

	    if (hasColumn(rs, "view_count")) {
	        dto.setViewCount(rs.getInt("view_count"));
	    }
	    if (hasColumn(rs, "news_type")) {
	        dto.setNewsType(rs.getString("news_type"));
	    }
	    if (hasColumn(rs, "is_secret")) {
	        dto.setSecret(rs.getBoolean("is_secret"));
	    }
	    if (hasColumn(rs, "qna_status")) {
	        dto.setQnaStatus(rs.getString("qna_status"));
	    }
	    if (hasColumn(rs, "answer_content")) {
	        dto.setAnswerContent(rs.getString("answer_content"));
	    }

	    return dto;
	}

	/** ResultSet에 특정 컬럼이 존재하는지 확인하는 유틸 */
	private boolean hasColumn(ResultSet rs, String columnName) {
	    try {
	        rs.findColumn(columnName);
	        return true;
	    } catch (SQLException e) {
	        return false;
	    }
	}

	/** 널 방지용 getString */
	private String getSafeString(ResultSet rs, String columnName) {
	    try {
	        return rs.getString(columnName);
	    } catch (SQLException e) {
	        return null;
	    }
	}

    
    
	// ==========================
	// 카테고리 + 검색 (페이징)
	// ==========================
	public List<CboardDTO> selectByCategoryWithSearch(String category, int start, String field, String keyword) {
	    List<CboardDTO> list = new ArrayList<>();
	    try {
	        conn = getConnection();
	        String sql = "SELECT * FROM cboard WHERE category=? ";
	        if ("title".equals(field)) {
	            sql += "AND title LIKE ? ";
	        } else if ("writer".equals(field)) {
	            sql += "AND writer_id LIKE ? ";
	        } else {
	            sql += "AND (title LIKE ? OR content LIKE ?) ";
	        }
	        sql += "ORDER BY board_id DESC LIMIT ?, 10";

	        psmt = conn.prepareStatement(sql);
	        psmt.setString(1, category);

	        if ("title".equals(field) || "writer".equals(field)) {
	            psmt.setString(2, "%" + keyword + "%");
	            psmt.setInt(3, start);
	        } else {
	            psmt.setString(2, "%" + keyword + "%");
	            psmt.setString(3, "%" + keyword + "%");
	            psmt.setInt(4, start);
	        }

	        rs = psmt.executeQuery();
	        while (rs.next()) {
	            list.add(mapResultSetToDTO(rs));
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try { closeAll(); } catch (SQLException e) { e.printStackTrace(); }
	    }
	    return list;
	}
    
    
    
    
	// ==========================
	// 카테고리 + 검색 조건 글 개수
	// ==========================
	public int selectCountByCategoryWithSearch(String category, String field, String keyword) {
	    int total = 0;
	    try {
	        conn = getConnection();
	        String sql = "SELECT COUNT(*) FROM cboard WHERE category=? ";
	        if ("title".equals(field)) {
	            sql += "AND title LIKE ?";
	        } else if ("writer".equals(field)) {
	            sql += "AND writer_id LIKE ?";
	        } else {
	            sql += "AND (title LIKE ? OR content LIKE ?)";
	        }

	        psmt = conn.prepareStatement(sql);
	        psmt.setString(1, category);

	        if ("title".equals(field) || "writer".equals(field)) {
	            psmt.setString(2, "%" + keyword + "%");
	        } else {
	            psmt.setString(2, "%" + keyword + "%");
	            psmt.setString(3, "%" + keyword + "%");
	        }

	        rs = psmt.executeQuery();
	        if (rs.next()) {
	            total = rs.getInt(1);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try { closeAll(); } catch (SQLException e) { e.printStackTrace(); }
	    }
	    return total;
	}
    
    
	
    
    
    
    
    
    
    
    
    
    
}
