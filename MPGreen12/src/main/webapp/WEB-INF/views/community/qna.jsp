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
        <a href="#" class="sidebar-text">질문과 답변</a>
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
            <li class="item"><a class="itemText" href="./jobs.html">취업정보</a></li>
            <li class="item"><a class="itemText" href="./free.html">자유게시판</a></li>
            <li class="item active"><a class="itemText" href="./qna.html" style="color:#fff">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="./data.html">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">질문과 답변</h3>
        </div>

        <div class="notice-wrap">
          <!-- 상단 필터/검색 -->
          <form class="notice-toolbar" action="#" method="get">
            <select class="notice-field" name="field" aria-label="검색 대상 선택">
              <option value="all">전체</option>
              <option value="title">제목</option>
              <option value="writer">작성자</option>
              <option value="status">상태</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" />
            <button type="submit" class="notice-btn">검색</button>
          </form>

          <!-- 리스트 -->
          <table class="notice-table qna-table">
            <colgroup>
              <col class="col-no">
              <col class="col-title">
              <col class="col-writer">
              <col class="col-date">
              <col class="col-status">
            </colgroup>
            <thead>
              <tr>
                <th class="col-no">번호</th>
                <th class="col-title">제목</th>
                <th class="col-writer">작성자</th>
                <th class="col-date">작성일</th>
                <th class="col-status">상태</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="col-no">5</td>
                <td class="col-title">
                  <div class="title-wrap qna-lock">
                    <img src="../images/ico-lock.png" alt="비밀글" class="lock">
                    문의드립니다.
                  </div>
                </td>
                <td>홍길동</td>
                <td>24.04.09</td>
                <td><span class="qna-status is-await">답변대기</span></td>
              </tr>

              <tr>
                <td class="col-no">4</td>
                <td class="col-title">취업 진로 상담</td>
                <td>홍길동</td>
                <td>24.04.09</td>
                <td><span class="qna-status is-done">답변완료</span></td>
              </tr>

              <tr class="is-reply">
                <td class="col-no">3</td>
                <td class="col-title">
                  <div class="title-wrap qna-reply">RE : [답변] 취업 진로 상담</div>
                </td>
                <td>담당자</td>
                <td>24.04.09</td>
                <td><span class="qna-status is-done">답변완료</span></td>
              </tr>

              <tr>
                <td class="col-no">2</td>
                <td class="col-title">
                  <div class="title-wrap qna-lock">
                    <img src="../images/ico-lock.png" alt="비밀글" class="lock">
                    취업실전전략1 일반선택 교과목 문의입니다
                  </div>
                </td>
                <td>홍길동</td>
                <td>24.04.09</td>
                <td><span class="qna-status is-done">답변완료</span></td>
              </tr>

              <tr class="is-reply">
                <td class="col-no">1</td>
                <td class="col-title">
                  <div class="title-wrap qna-reply">RE : [답변] 취업실전전략1 일반선택 교과목 문의입니다</div>
                </td>
                <td>담당자</td>
                <td>24.04.09</td>
                <td><span class="qna-status is-done">답변완료</span></td>
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
