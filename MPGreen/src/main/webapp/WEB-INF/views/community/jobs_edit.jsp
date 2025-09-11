<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community jobs-edit">
  <main>
    <!-- 상단 경로 -->
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/list.do?category=jobs" class="sidebar-text">취업정보</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/edit.do?category=jobs&boardId=${board.boardId}" class="sidebar-text">글수정</a>
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
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=notice">공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=news">뉴스 및 칼럼</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=jobs" style="color:#fff">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 수정 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">취업정보 수정</h3>
        </div>

        <div class="notice-wrap">
          <form class="edit-form" action="${pageContext.request.contextPath}/community/edit.do?category=jobs" method="post">
            <input type="hidden" name="boardId" value="${board.boardId}" />

            <div class="form-row">
              <label for="status">상태</label>
              <select id="status" name="status" required>
                <option value="open" ${board.status == 'open' ? 'selected' : ''}>모집중</option>
                <option value="closed" ${board.status == 'closed' ? 'selected' : ''}>마감</option>
              </select>
            </div>

            <div class="form-row">
              <label for="company">업체명</label>
              <input type="text" id="company" name="company" value="${board.company}" required>
            </div>

            <div class="form-row">
              <label for="title">채용정보</label>
              <textarea id="title" name="title" rows="5" required>${board.title}</textarea>
            </div>

            <div class="form-row">
              <label for="deadline">마감일자</label>
              <input type="text" id="deadline" name="deadline" value="${board.deadline}" required>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn-submit">수정 완료</button>
              <a href="${pageContext.request.contextPath}/community/view.do?category=jobs&boardId=${board.boardId}" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
