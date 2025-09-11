<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/academic/_header.jsp" %>

 <main>
        <!-- ===== 상단바 ===== -->
        <div class="top-bar">
            <div class="top-bar-content">
                <img src="../images/ico-home.png" alt="홈">
                <img src="../images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">학사안내</a>
                <img src="../images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">학사 일정</a>
            </div>
        </div>

        <section id="container">
            <!--사이드바-->
            <div class="sidebar">
                <div class="sidebarHeader"> <!--사이드바 윗부분(제목 영역)-->
                    <h2 class="sbTitle">학사안내</h2> <!--사이드바 제목-->
                </div>
                <div class="sidebarMenu"> <!--사이드바 하위 메뉴-->
                    <ul class="list"> <!--사이드바 리스트-->
                                            <li class="item">
                        <a href="/MPGreen/academic/notice.do" class="itemText">공지사항</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/schedule.do" class="itemText">학사일정</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/enroll.do" class="itemText">수강신청</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/grade.do" class="itemText">성적</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/graduation.do" class="itemText">수료 및 졸업</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/faq.do" class="itemText">자주 묻는 질문</a>
                    </li>
                    </ul>
                </div>
            </div>
            <!--본문 영역-->
            <div class="board">
                <div class="boardUpper">
                    <h3 class="buText">학사일정</h3>
                </div>
                <div class="boardLower"> <!-- 개별 메인 삽입 -->
                    <!-- 학사관리 달력 -->
                    <div class="calendar-container">
                        <!-- 헤어(연도.월)-->
                        <div class="calendar-header">
                            <span class="arrow prev">&lt;</span>
                            <span class="month-year">2025.09</span>
                            <span class="arrow next">&gt;</span>
                        </div>
                        <!-- 요일과 날짜 -->
                        <div class="calendar">
                            <div class="calendar-body">
                                <div class="weekdays">
                                    <div class="weekday">Sun</div>
                                    <div class="weekday">Mon</div>
                                    <div class="weekday">Tue</div>
                                    <div class="weekday">Wed</div>
                                    <div class="weekday">Thu</div>
                                    <div class="weekday">Fri</div>
                                    <div class="weekday">Sat</div>
                                </div>
                                <div class="days">
                                    <!-- 이전 달 날짜 -->
                                    <div class="day other-month"><span>31</span></div>
                                    <!-- 현재 달 날짜 -->
                                    <div class="day"><span>1</span></div>
                                    <div class="day"><span>2</span></div>
                                    <div class="day"><span>3</span></div>
                                    <div class="day"><span>4</span></div>
                                    <div class="day"><span>5</span></div>
                                    <div class="day"><span>6</span></div>
                                    <div class="day"><span>7</span></div>
                                    <div class="day selected-start"><span>8</span></div>
                                    <div class="day selected"><span>9</span></div>
                                    <div class="day selected"><span>10</span></div>
                                    <div class="day selected"><span>11</span></div>
                                    <div class="day selected-end"><span>12</span></div>
                                    <div class="day"><span>13</span></div>
                                    <div class="day"><span>14</span></div>
                                    <div class="day"><span>15</span></div>
                                    <div class="day"><span>16</span></div>
                                    <div class="day"><span>17</span></div>
                                    <div class="day"><span>18</span></div>
                                    <div class="day"><span>19</span></div>
                                    <div class="day"><span>20</span></div>
                                    <div class="day"><span>21</span></div>
                                    <div class="day"><span>22</span></div>
                                    <div class="day"><span>23</span></div>
                                    <div class="day"><span>24</span></div>
                                    <div class="day"><span>25</span></div>
                                    <div class="day"><span>26</span></div>
                                    <div class="day"><span>27</span></div>
                                    <div class="day"><span>28</span></div>
                                    <div class="day"><span>29</span></div>
                                    <div class="day"><span>30</span></div>
                                    <!-- 다음 달 날짜 -->
                                    <div class="day other-month"><span>1</span></div>
                                    <div class="day other-month"><span>2</span></div>
                                    <div class="day other-month"><span>3</span></div>
                                    <div class="day other-month"><span>4</span></div>
                                    <div class="day other-month"><span>5</span></div>
                                </div>
                            </div>
                            <div class="refer">
                                <p>※ 자세한 일정 내용은 공지사항을 참고하시기 바랍니다.</p>
                            </div>
                        </div>
                    </div> <!-- calendar-container 끝 -->
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
</div>
</body>
<%@ include file="/WEB-INF/views/academic/_footer.jsp" %>