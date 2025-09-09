<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/academic/_header.jsp"%>


    <main>

        <div class="top-bar">
            <div class="top-bar-content">
                <img src="/MPGreen/images/ico-home.png" alt="홈">
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">대학소개</a>
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">총장 인사말</a>
            </div>
        </div>
        
    <section id="container"> 
        <div class="sidebar"> <!--사이드바-->
            <div class="sidebarHeader"> <!--사이드바 윗부분(제목 영역)-->
                <h2 class="sbTitle">학사안내</h2> <!--사이드바 제목-->
            </div>
            <div class="sidebarMenu"> <!--사이드바 하위 메뉴-->
                <ul class="list"> <!--사이드바 리스트-->
                    <li class="item"> <!--사이드바 리스트 요소-->
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
        <div class="board"> <!--본문 영역-->
          <div class="board"> <!--본문 영역-->

            <div class="boardUpper">
                <h3 class="buText">자주 묻는 질문</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
                    <!--------- 1번째 FAQ ---------->
                    <div class="text-with-icon">
                        <img src="/MPGreen/images/bullet-h4.png" alt="icon" class="icon">
                        <span>휴·복학 관련</span>
                    </div>


                    <!-- 표 전체 -->
                    <div class="table-container">

                        <!-- 질문 row -->
                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="1">일반휴학 연장은 몇 학기까지 가능한가요?</a>
                            </div>
                        </div>

                        <!-- 답변 row (처음 숨김) -->
                        <div class="table-row answer-row" id="answer-1">
                            <div class="row-content">
                                <div class="row-box">A</div>
                                <span class="row-text">휴학연장은 1회에 2학기 가능하고 총 6학기 휴학 가능합니다.</span>
                            </div>
                        </div>

                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="2">복학하려고 하는데 어떻게 신청하나요?</a>
                            </div>
                        </div>

        
                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="3">등록금 납부해서 등록 후 일반 휴학 가능한가요? 환불은 언제 되나요?</a>
                            </div>
                        </div>

        
                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="4">군휴학 내려면 입영통지서 말고 어떤 서류가 필요하나요?</a>
                            </div>
                        </div>
                    </div>
                    
                    <!--------- 2번째 FAQ ---------->
                    <div class="text-with-icon">
                        <img src="/MPGreen/images/bullet-h4.png" alt="icon" class="icon">
                        <span>교과 및 학사 관련</span>
                    </div>
                    
                     <!-- 표 전체 -->
                    <div class="table-container">

                        <!-- 질문 row -->
                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="5">학과별 교과과정과 학사안내를 확인하고 싶은데, 어떻게 확인할 수 있나요?</a>
                            </div>
                        </div>

                        <!-- 답변 row (처음 숨김) -->
                        <div class="table-row answer-row" id="answer-5">
                            <div class="row-content">
                                <div class="row-box">A</div>
                                <span class="row-text">홈페이지 내 대학요람(대학생활 안내)를 통해 해당 입학년도, 해당학과의 교과과정과 학사안내를 확인하세요.</span>
                            </div>
                        </div>

                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="6">복수전공 취소 또는 부전공 전환 신청은 어떻게 하나요?</a>
                            </div>
                        </div>

                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="7">수강 신청은 어떻게 하나요?</a>
                            </div>
                        </div>

                    </div>

                    <!--------- 3번째 FAQ ---------->
                       <div class="text-with-icon">
                        <img src="/MPGreen/images/bullet-h4.png" alt="icon" class="icon">
                        <span>수강신청 관련</span>
                    </div>
                    
                     <!-- 표 전체 -->
                    <div class="table-container">

                        <!-- 질문 row -->
                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="8">4학년 2학기에도 최소 12학점을 수강해야 하나요?</a>
                            </div>
                        </div>

                
                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="9">9학기 이상 등록자는 수강신청학점에 따라 등록금이 달라지나요?</a>
                            </div>
                        </div>

        
                        <div class="table-row question-row">
                            <div class="row-content">
                                <div class="row-box">Q</div>
                                <a href="#" class="row-text" data-answer-id="10">수강 신청은 어떻게 하나요?</a>
                            </div>
                        </div>
                        <!-- 답변 row (처음 숨김) -->
                        <div class="table-row answer-row" id="answer-10">
                            <div class="row-content">
                                <div class="row-box">A</div>
                                <span class="row-text">수강신청 안내를 참고하시기 바랍니다.</span>
                            </div>
                        </div>

        
                
                    </div>


                </div>


        
            </div>

        </div>
    </section>
  </main>
<%@ include file="/WEB-INF/views/academic/_footer.jsp" %>