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
        <a href="#" class="sidebar-text">취업정보</a>
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
            <li class="item"><a class="itemText" href="./news.html">뉴스 및 칼럼</a></li>
            <li class="item active"><a class="itemText" href="./jobs.html" style="color:#fff">취업정보</a></li>
            <li class="item"><a class="itemText" href="./free.html">자유게시판</a></li>
            <li class="item"><a class="itemText" href="./qna.html">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="./data.html">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">취업정보</h3>
        </div>

        <div class="notice-wrap">
          <!-- 상단 필터/검색 -->
          <form class="notice-toolbar" action="#" method="get">
            <select class="notice-field" name="field" aria-label="검색 대상 선택">
              <option value="all">전체</option>
              <option value="company">업체</option>
              <option value="title">채용정보</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" />
            <button type="submit" class="notice-btn">검색</button>
          </form>

          <!-- 취업정보 리스트 -->
          <table class="notice-table jobs-table">
            <colgroup>
              <col class="col-no">
              <col class="col-status">
              <col class="col-company">
              <col class="col-title">
              <col class="col-deadline">
              <col class="col-views">
            </colgroup>
            <thead>
              <tr>
                <th class="col-no">번호</th>
                <th class="col-status">상태</th>
                <th class="col-company">업체</th>
                <th class="col-title">채용정보</th>
                <th class="col-deadline">마감일</th>
                <th class="col-views">조회</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="col-no">3</td>
                <td class="col-status">
                  <span class="job-badge is-open">모집중</span>
                </td>
                <td class="col-company">(주)삼성전자</td>
                <td class="col-title">
                  2025 상반기 (주)삼성전자 대학원(석사) 신입/경력 채용
                </td>
                <td class="col-deadline">2024.04.09 12:00</td>
                <td class="col-views">160</td>
              </tr>
              <tr>
                <td class="col-no">2</td>
                <td class="col-status">
                  <span class="job-badge is-open">모집중</span>
                </td>
                <td class="col-company">(주)삼성전자</td>
                <td class="col-title">
                  2025 상반기 (주)삼성전자 대학원(석사) 신입/경력 채용
                </td>
                <td class="col-deadline">2024.04.09 12:00</td>
                <td class="col-views">160</td>
              </tr>
              <tr>
                <td class="col-no">1</td>
                <td class="col-status">
                  <span class="job-badge is-closed">마감</span>
                </td>
                <td class="col-company">(주)삼성전자</td>
                <td class="col-title">
                  2025 상반기 (주)삼성전자 대학원(석사) 신입/경력 채용
                </td>
                <td class="col-deadline">2024.04.09 12:00</td>
                <td class="col-views">160</td>
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

  