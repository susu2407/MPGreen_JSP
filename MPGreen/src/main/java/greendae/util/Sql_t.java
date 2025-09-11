package greendae.util;

public class Sql_t {
	
	// ==================================================== Login 전용 SQL======================= //
    // 주민번호 앞 6자리만 비교하도록
	public static final String LOGIN_STUDENT = "SELECT s_id, id_num FROM student WHERE s_id = ? AND SUBSTR(id_num, 1, 6) = ?";
    public static final String LOGIN_PROFESSOR = "SELECT p_id, id_num FROM professor WHERE p_id = ? AND SUBSTR(id_num, 1, 6) = ?";
    // 일반회원은 비번전체 비교
    public static final String LOGIN_USER = "SELECT u_id, pass FROM user WHERE u_id = ? AND pass = ?";

    // 약관
	public static final String SELECT_TERMS = "SELECT content FROM TERMS where NO=?";
	public static final String SELECT_ALL_TERMS = "SELECT `no`, `title`, `content` FROM `terms` ORDER BY `no` ASC";
}