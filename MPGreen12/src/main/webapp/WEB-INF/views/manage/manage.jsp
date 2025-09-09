<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/manage/_header.jsp" %>


<body>
    <main>
        <!-- ■■■ 사이드바 시작 ■■■ -->
        <%@ include file="/manage/_sidebar.jsp" %>
        <!-- □□□ 사이드바 끝 □□□ -->

        <!-- ■■■ 메인컨텐츠 시작■■■-->
        <div class="managemain">
            <!-- 컨텐츠_최상단 -->
            <article class="top">
                <h4>운영현황 메인</h4>
                <h3>HOME ><p>운영현황 메인</p></h3>
            </article>

            <!-- ■■■ 컨텐츠_1층_대학 운영현황 ■■■ -->
            <div class="NONE_con_1f">
                <h4><img src="/minP01/images/bullet-h4.png" alt="h4">대학 운영 현황</h4>
                <table>
                    <thead>
                        <tr>
                            <th>개설학과</th>
                            <th>개설강좌</th>
                            <th>전체교수</th>
                            <th>임직원</th>
                            <th>학생</th>
                            <th>휴학생</th>
                            <th>대학원생</th>
                            <th>졸업생</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>53</td>
                            <td>214</td>
                            <td>64</td>
                            <td>24</td>
                            <td>2047</td>
                            <td>127</td>
                            <td>364</td>
                            <td>5680</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- ■■■ 컨텐츠_2층_교육 운영현황 ■■■ -->
            <div class="NONE_con_2f">
                <div class="viewarea">
                    <h4><img src="/minP01/images/bullet-h4.png" alt="h4">교육 운영 현황</h4>
                    <img src="/minP01/images/bg-viewmore01.png" alt="viewmorebtn" class="vmore">
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>학과</th>
                            <th>과목코드</th>
                            <th>과목명</th>
                            <th>학년</th>
                            <th>담당교수</th>
                            <th>구분</th>
                            <th>학점</th>
                            <th>강의장</th>
                            <th>수강인원</th>
                            <th>수강률</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>국어국문학과</td>
                            <td>120001</td>
                            <td>고전소설1</td>
                            <td>2학년</td>
                            <td>김국어</td>
                            <td>전공</td>
                            <td>3</td>
                            <td>인문관101</td>
                            <td>32/46</td>
                            <td>70%</td>
                        </tr>
                        <tr>
                            <td>컴퓨터과학과</td>
                            <td>830003</td>
                            <td>자바프로그래밍</td>
                            <td>2학년</td>
                            <td>김자바</td>
                            <td>전공</td>
                            <td>3</td>
                            <td>컴퓨터실</td>
                            <td>32/46</td>
                            <td>70%</td>
                        </tr>
                        <tr>
                            <td>컴퓨터과학과</td>
                            <td>830001</td>
                            <td>프로그래밍의 이해</td>
                            <td>1학년</td>
                            <td>김코딩</td>
                            <td>전공</td>
                            <td>3</td>
                            <td>공학관101</td>
                            <td>32/46</td>
                            <td>70%</td>
                        </tr>
                        <tr>
                            <td>컴퓨터과학과</td>
                            <td>830003</td>
                            <td>자바프로그래밍</td>
                            <td>2학년</td>
                            <td>김자바</td>
                            <td>전공</td>
                            <td>3</td>
                            <td>컴퓨터실</td>
                            <td>32/46</td>
                            <td>70%</td>
                        </tr>
                        <tr>
                            <td>컴퓨터과학과</td>
                            <td>830003</td>
                            <td>자바프로그래밍</td>
                            <td>2학년</td>
                            <td>김자바</td>
                            <td>전공</td>
                            <td>3</td>
                            <td>컴퓨터실</td>
                            <td>32/46</td>
                            <td>70%</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- ■■■ 컨텐츠_3층_(학년별&학과별) 학생 현황 ■■■ -->
            <article class="con_3_4f">
                <div class="tb">
                    <div class="viewarea">
                        <h4><img src="/minP01/images/bullet-h4.png" alt="h4">학년별 학생 현황</h4>
                        <img src="/minP01/images/bg-viewmore01.png" alt="viewmorebtn" class="vmore">
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>학년</th>
                                <th>재학생</th>
                                <th>휴학생</th>
                                <th>전체</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1학년</td>
                                <td>460</td>
                                <td>32</td>
                                <td>492</td>
                            </tr>
                            <tr>
                                <td>2학년</td>
                                <td>460</td>
                                <td>32</td>
                                <td>492</td>
                            </tr>
                            <tr>
                                <td>3학년</td>
                                <td>460</td>
                                <td>32</td>
                                <td>492</td>
                            </tr>
                            <tr>
                                <td>4학년</td>
                                <td>460</td>
                                <td>32</td>
                                <td>492</td>
                            </tr>
                            <tr>
                                <th>총합</th>
                                <th>1840</th>
                                <th>128</th>
                                <th>1968</th>
                            </tr>
                        </tbody>
                    </table>
                </div>

                    <!-- 학과별 학생 현황 -->
                <div class="tb">
                    <div class="viewarea">
                        <h4><img src="/minP01/images/bullet-h4.png" alt="h4">학과별 학생 현황</h4>
                        <img src="/minP01/images/bg-viewmore01.png" alt="viewmorebtn" class="vmore">
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>학과</th>
                                <th>재학생</th>
                                <th>휴학생</th>
                                <th>전체</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>국어국문학과</td>
                                <td>120</td>
                                <td>2</td>
                                <td>122</td>
                            </tr>
                            <tr>
                                <td>영어영문학과</td>
                                <td>87</td>
                                <td>2</td>
                                <td>89</td>
                            </tr>
                            <tr>
                                <td>컴퓨터공학과</td>
                                <td>163</td>
                                <td>27</td>
                                <td>190</td>
                            </tr>
                            <tr>
                                <td>경제학과</td>
                                <td>460</td>
                                <td>32</td>
                                <td>546</td>
                            </tr>
                            <tr>
                                <th>총합</th>
                                <th>1840</th>
                                <th>128</th>
                                <th>1968</th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </article>

            <!-- ■■■ 컨텐츠_4층(end)_학사안내 공지사항 & 입학상담 ■■■ -->
            <article class="con_3_4f">
                <div class="tb">
                    <div class="viewarea">
                        <h4><img src="/minP01/images/bullet-h4.png" alt="h4">학사안내 공지사항</h4>
                        <img src="/minP01/images/bg-viewmore01.png" alt="viewmorebtn" class="vmore">
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>12</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>담당자</td>
                                <td>24.04.09</td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>담당자</td>
                                <td>24.04.09</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>담당자</td>
                                <td>24.04.09</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>담당자</td>
                                <td>24.04.09</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>담당자</td>
                                <td>24.04.09</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                    <!-- 입학상담 -->
                <div class="tb">
                    <div class="viewarea">
                        <h4><img src="/minP01/images/bullet-h4.png" alt="h4">입학상담</h4>
                        <img src="/minP01/images/bg-viewmore01.png" alt="viewmorebtn" class="vmore">
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성일</th>
                                <th>상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>5</td>
                                <td>[정시] 정시모집 관련해 문의…</td>
                                <td>24.06.24</td>
                                <td class="wait">답변대기</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>24.06.24</td>
                                <td class="complete">답변완료</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>24.06.24</td>
                                <td class="complete">답변완료</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>24.06.24</td>
                                <td class="complete">답변완료</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>2025학년도 신입학 추가모집 …</td>
                                <td>24.06.24</td>
                                <td class="complete">답변완료</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </article>
        </div>
        <!-- □□□ 메인컨텐츠 끝  □□□-->
        
    </main>


    <!-- 푸터 -->
    <%@ include file="/manage/_footer.jsp" %>