<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>
  <!-- ===== 메인 ===== -->
  <main>
    <!-- 상단 경로 -->
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">뉴스 및 칼럼</a>
      </div>
    </div>

    <section id="container">
      <!-- 좌측 사이드바 -->
      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">커뮤니티</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item"><a class="itemText" href="./notice.html">공지사항</a></li>
            <li class="item active"><a class="itemText" href="./news.html" style="color:#fff">뉴스 및 칼럼</a></li>
            <li class="item"><a class="itemText" href="./jobs.html">취업정보</a></li>
            <li class="item"><a class="itemText" href="./free.html">자유게시판</a></li>
            <li class="item"><a class="itemText" href="./qna.html">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="./data.html">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">뉴스 및 칼럼</h3>
        </div>

        <div class="notice-wrap">
          <!-- 상단 필터/검색 -->
          <form class="notice-toolbar" action="#" method="get">
            <select class="notice-field" name="field" aria-label="검색 대상 선택">
              <option value="all">전체</option>
              <option value="title">제목</option>
              <option value="writer">작성자</option>
              <option value="type">구분</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" />
            <button type="submit" class="notice-btn">검색</button>
          </form>

          <!-- 리스트 -->
          <table class="notice-table news-table">
            <colgroup>
              <col class="col-no">
              <col class="col-type">
              <col class="col-title">
              <col class="col-writer">
              <col class="col-date">
              <col class="col-views">
            </colgroup>
            <thead>
              <tr>
                <th class="col-no">번호</th>
                <th class="col-type">구분</th>
                <th class="col-title">제목</th>
                <th class="col-writer">작성자</th>
                <th class="col-date">작성일</th>
                <th class="col-views">조회</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="col-no">3</td>
                <td class="col-type">
                  <span class="nc-badge is-column">칼럼</span>
                </td>
                <td class="col-title">
                  정원호(식품자원경제) 교수, 시론 - 4차 산업 시대의 식량안보와 지속가능성
                </td>
                <td>정원호</td>
                <td>24.04.09</td>
                <td>160</td>
              </tr>
              <tr>
                <td class="col-no">2</td>
                <td class="col-type">
                  <span class="nc-badge is-column">칼럼</span>
                </td>
                <td class="col-title">
                  주윤정(법학전문대학원) 교수, 기고 - 인공지능, 개인정보 보호와의 균형
                </td>
                <td>주윤정</td>
                <td>24.04.09</td>
                <td>160</td>
              </tr>
              <tr>
                <td class="col-no">1</td>
                <td class="col-type">
                  <span class="nc-badge is-news">뉴스</span>
                </td>
                <td class="col-title">
                  그린대, ‘2024년 2학기 늘봄학교 초1 맞춤형 프로그램’ 운영
                </td>
                <td>홍보실</td>
                <td>24.04.09</td>
                <td>160</td>
              </tr>
              <tr>
                <td class="col-no">1</td>
                <td class="col-type">
                  <span class="nc-badge is-column">칼럼</span>
                </td>
                <td class="col-title">
                  김동현(의학) 명예교수, 세상읽기 - 절대로 포기하지 말아야 할 것들
                </td>
                <td>김동현</td>
                <td>24.04.09</td>
                <td>160</td>
              </tr>
            </tbody>
          </table>

          <!-- 페이지네이션 -->
          <div class="notice-paging">
            <button class="notice-nav" aria-label="첫 페이지">«</button>
            <button class="notice-nav" aria-label="이전 페이지">‹</button>
            <button class="notice-page is-active">1</button>
            <button class="notice-page">2</button>
            <button class="notice-page">3</button>
            <button class="notice-nav" aria-label="다음 페이지">›</button>
            <button class="notice-nav" aria-label="마지막 페이지">»</button>
          </div>
        </div>
      </div>
    </section>
  </main>
  <%@ include file="./_footer.jsp" %>
