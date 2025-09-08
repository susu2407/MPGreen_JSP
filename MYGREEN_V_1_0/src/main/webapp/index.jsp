<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>GreenUniversity</title>
        <link rel="stylesheet" href="/css/common/common.css">
        <link rel="stylesheet" href="/css/common/header.css">
        <link rel="stylesheet" href="/css/index.css">
        <link rel="stylesheet" href="/css/common/footer.css">
    </head>

    <body>
        <!-- ===== 헤더 ===== -->
        <header>
            <!-- 1. 상단 유틸 메뉴: 이 div가 화면 끝까지 늘어남 -->
            <div id="header-top">
                <!-- .container가 내부 콘텐츠를 1200px로 중앙 정렬함 -->
                <div class="container">
                    <ul class="util">
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">사이트맵</a></li>
                        <li><a href="#">로그인</a></li>
                        <li><a href="#">학생지원</a></li>
                    </ul>
                </div>
            </div>
            <!-- 2. 메인 네비게이션: 이 div도 화면 끝까지 늘어남 -->
            <div class="header-main">
                <!-- .container가 로고와 메뉴를 1200px 중앙에 배치 -->
                <div class="container">
                    <a href="/" class="logo">
                        <img src="/images/header_logo.png" alt="그린대학교">
                    </a>
                    <nav class="main-nav">
                        <ul>
                            <li class="dropdown"><a class="dropbtn" href="#">대학소개</a>
                                <ul class="dropdown-content">
                                    <li><a href="#">총장 인사말</a></li>
                                    <li><a href="#">교육이념</a></li>
                                    <li><a href="#">연혁</a></li>
                                    <li><a href="#">조직도</a></li>
                                    <li><a href="#">오시는길</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="dropbtn" href="#">입학안내</a>
                                <ul class="dropdown-content">
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="#">수시모집</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="dropbtn" href="#">대학·대학원</a>
                                <ul class="dropdown-content">
                                    <li><a href="#">인문사회대학</a></li>
                                    <li><a href="#">자연과학대학</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="dropbtn" href="#">학사안내</a>
                                <ul class="dropdown-content">
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="#">학사일정</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="dropbtn" href="#">대학생활</a>
                                <ul class="dropdown-content">
                                    <li><a href="#">학생회 소개</a></li>
                                    <li><a href="#">동아리/스터디</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="dropbtn" href="#">커뮤니티</a>
                                <ul class="dropdown-content">
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="#">뉴스 및 칼럼</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- <jsp:include page="/WEB-INF/views/common/header.html" /> -->


        <!-- ===== 메인 ===== -->
        <main>
            <div class="wrapper">
            <!-- 1. 최상단 메인 배너 섹션 -->
            <section class="hero-section">
                <div class="hero-content">
                    <p>IT 기술과 창의적 사고를 통해 미래를 설계하는 인재 양성</p>
                    <h2>그린대학교 컴퓨터과학과</h2>
                    <a href="#" class="hero-button">학과바로가기</a>
                </div>
                <!-- 슬라이드 위치 아이콘 -->
                <div class="slide-indicators">
                    <span class="active"></span><!-- 첫 번째 슬라이드가 활성화된 상태 -->
                    <span></span>
                    <span></span>
                </div>
            </section>

            <!-- 2. 공지사항 섹션 (학사공지, 공지사항) -->
            <section class="notice-section">
                <div class="container">
                    <div class="notice-board">
                        <div class="notice-header white-header">
                            <h3>학사안내</h3>
                            <a href="#" class="more-btn"></a>
                        </div>
                        <ul>
                            <li><a href="#">2025학년도 2학기 수강신청 안내</a><span>2025.09.04</span></li>
                            <li><a href="#">2025학년도 1학기 성적 확인 및 이의신청 안내</a><span>2025.09.03</span></li>
                            <li><a href="#">졸업요건 변경에 따른 안내문</a><span>2025.09.02</span></li>
                            <li><a href="#">코로나19 관련 비대면 수업 연장 안내</a><span>2025.09.01</span></li>
                        </ul>
                    </div>
                    <div class="notice-board blue-header">
                        <div class="notice-header">
                            <h3>공지사항</h3>
                            <a href="#" class="more-btn"></a>
                        </div>
                        <ul>
                            <li><a href="#">[모집] 2025 그린대학교 코딩경진대회 참가자 모집</a><span>2025.09.04</span></li>
                            <li><a href="#">[장학] 2025년도 2학기 국가장학금 신청 안내</a><span>2025.09.03</span></li>
                            <li><a href="#">[행사] 2025년 가을축제 일정 안내</a><span>2025.09.02</span></li>
                            <li><a href="#">중앙도서관 시스템 점검으로 인한 서비스 일시 중단 안내</a><span>2025.09.01</span></li>
                        </ul>
                    </div>
                </div>
            </section>

            <!-- 3. 포토 갤러리 섹션 -->
            <section class="gallery-section">
                <div class="container">
                    <!-- 갤러리 제목과 더보기 버튼을 포함하는 헤더 -->
                    <div class="gallery-title">
                        <span>PHOTO GALLERY</span>
                        <a href="#" class="more-btn"></a>
                    </div>
            
                    <!-- 갤러리 아이템 목록 -->
                    <div class="photo_gallery">
                        <a href="#">
                            <div class="caption">
                                <p>글로벌 명문대학 그린대학교</p>
                            </div>
                        </a>
                        <a href="#">
                            <div class="caption">
                                <p>글로벌 명문대학 그린대학교</p>
                            </div>
                        </a>
                        <a href="#">
                            <div class="caption">
                                <p>글로벌 명문대학 그린대학교</p>
                            </div>
                        </a>
                        <a href="#">
                            <div class="caption">
                                <p>글로벌 명문대학 그린대학교</p>
                            </div>
                        </a>
                    </div>
                </div>
            </section>

            <!-- 4. 주요사이트 바로가기 배너 -->
            <section class="sites-banner-section">
                <div class="container">
                    <div class="banner-text">
                        <h4>동아리 HELPER</h4>
                        <p>공무원 시험 준비반을 운용함으로써 정치행정학과에서 공무원 시험을 준비하는 학생들에게<br>
                            인터넷 강의, 교재를 제공하고 스터디 그룹의 활동을 도와주고 있습니다.
                        </p>
                    </div>
                    <a href="#" class="banner-button">자세히 보기</a>
                </div>
            </section>

            <!-- 5. 하단 콘텐츠 섹션 (뉴스, 스마트링크) -->
            <section class="bottom-content-section">
                <div class="container">
                    <div class="notice-board news-board">
                        <div class="notice-header">
                            <h3>뉴스/이벤트</h3>
                            <a href="#" class="more-btn"></a>
                        </div>
                        <ul>
                            <li><a href="#">[뉴스] 그린대학교, AI 연구소 개소</a><span>2025.09.04</span></li>
                            <li><a href="#">[이벤트] 신입생 환영 기념품 증정 이벤트</a><span>2025.09.03</span></li>
                            <li><a href="#">[뉴스] 컴퓨터과학과 김그린 교수, 세계적인 학회에서 논문 발표</a><span>2025.09.02</span></li>
                            <li><a href="#">[뉴스] 우리대학, 2025 대학평가에서 상위권 달성</a><span>2025.09.01</span></li>
                        </ul>
                    </div>
                    <div class="smart-link-section">
                        <div class="notice-board">
                            <div class="notice-header smart-link-title">
                                <h3>SMART LINK</h3>
                            </div>
                            <div class="smart-link-container">
                                <a href="#" class="link-item cert">
                                    <div class="icon-placeholder"><span>증명서발급 아이콘</span></div>
                                    <p>증명서발급</p>
                                </a>
                                <a href="#" class="link-item schedule">
                                    <div class="icon-placeholder"><span>학사일정 아이콘</span></div>
                                    <p>학사일정</p>
                                </a>
                                <a href="#" class="link-item directions">
                                    <div class="icon-placeholder"><span>오시는길 아이콘</span></div>
                                    <p>오시는길</p>
                                </a>
                                <a href="#" class="link-item sitemap">
                                    <div class="icon-placeholder"><span>사이트맵 아이콘</span></div>
                                    <p>사이트맵</p>
                                </a>
                                <a href="#" class="link-item support">
                                    <div class="icon-placeholder"><span>학생지원 아이콘</span></div>
                                    <p>학생지원</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section> 
        </main>


        <!-- ===== 푸터 ===== -->
        <footer>
            <div>
            <div class="container bottom">
                <p>
                <ul class="terms">
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">통합정보시스템</a></li>
                    <li><a href="#">학사일정</a></li>
                    <li><a href="#">주요민원 연럭처</a></li>
                    <li><a href="#">교내공지사항</a></li>
                </ul>
                </p>
            </div>
            </div>
            <div>
            <div class="footer-inner">
                <div class="footer-logo">
                <img src="/images/footer_logo.png" alt="그린대학교" class="icon">
                </div>
                <div class="info">
                <p>
                    그린대학교<br>
                    [12345] 부산광역시 부산진구 부전대로 123 그린대학교<br>
                    대표전화 : 051-123-1000 / 입학안내 : 051-123-1302 / FAX : 051-123-3333<br><br>
                    CopyrightⓒGreen University All rights reserved.
                </p>
                </div>
                <div class="footer-tools">
                <form action="#" method="get">
                    <select name="site" class="site-select" aria-label="주요사이트">
                    <option selected>주요사이트</option>
                    <option value="introduce">대학소개</option>
                    <option value="admission">입학안내</option>
                    <option value="graduate">대학.대학원</option>
                    <option value="Academic">학사안내</option>
                    <option value="campuslife">대학생활</option>
                    <option value="community">커뮤니티</option>
                    </select>
                </form>
                </div>
            </div>
            </div>
        </footer>
        <!-- 3. 푸터 조립 <jsp:include page="/WEB-INF/views/common/footer.html" /> -->
    </div><!-- wrapper 끝 -->
    </body>
</html>
