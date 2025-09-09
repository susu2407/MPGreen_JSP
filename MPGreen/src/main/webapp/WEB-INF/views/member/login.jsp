<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <!-- 기본 스타일 초기화 및 폰트 설정 -->
    <link rel="stylesheet" href="../css/common/common.css">
    <!-- 로그인 페이지 CSS 설정 -->
    <link rel="stylesheet" href="../css/member/login.css">
</head>
<body>

    <div class="container">
        <div class="login-form">
            <h1 class="login-title">LOGIN</h1>
            <p class="login-comment">로그인을 하시면 더 다양한 서비스를 받으실 수 있습니다.</p>

            <form>
                <div class="form-header">
                    <div class="role-selector">
                        <input type="radio" id="student" name="role" checked>
                        <label for="student">학부생</label>

                        <input type="radio" id="staff" name="role">
                        <label for="staff">교직원</label>

                        <input type="radio" id="general" name="role">
                        <label for="general">일반인</label>
                    </div>
                    <div class="find-link">
                        <a href="#">아이디/비밀번호 찾기</a>
                    </div>
                </div>

                <input type="text" class="input-field" placeholder="아이디">
                <input type="password" class="input-field" placeholder="비밀번호">

                <button type="submit" class="login-button">로그인</button>
            </form>

            <div class="info-section">
                <div class="info-header">
                    <div class="info-title-group">
                        <img src="../images/bullet-h4.png" alt="가입 안내 불릿 아이콘" class="info-icon">
                        <h2>아이디, 비밀번호 안내</h2>
                    </div>
                    <div class="signup-link">
                        <a href="#">회원가입</a>
                    </div>
                </div>
                <ul class="info-list">
                    <li>대학 구성원(학원, 교직원)은 회원가입없이 교번, 학번을 사용하여 로그인이 가능합니다.</li>
                    <li>비밀번호 분실시 학생지원팀에 방문하셔서 초기화하실 수 있습니다.</li>
                    <li>재학, 휴학, 졸업 유예인 경우 사용하실 수 있으며, 매년 학적변동이 일어날 때 상태가 변경됩니다.</li>
                    <li>문의사항이 있으시면 담당자(055-123-4567)에게 전화주세요</li>
                </ul>
            </div>
        </div>
    </div>

</body>
</html>