<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community jobs-write">
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
        <a href="${pageContext.request.contextPath}/community/write.do?category=jobs" class="sidebar-text">글쓰기</a>
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
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/notice.do">공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=news">뉴스 및 칼럼</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=jobs" style="color:#fff">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 글쓰기 폼 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">취업정보</h3>
        </div>

        <div class="notice-wrap">
          <!-- category=jobs 를 같이 넘겨야 함 -->
          <form class="write-form" 
                action="${pageContext.request.contextPath}/community/write.do?category=jobs" 
                method="post">

            <div class="form-row">
              <label for="status">상태</label>
              <select id="status" name="qnaStatus" required>
                <option value="open">모집중</option>
                <option value="closed">마감</option>
              </select>
            </div>
				<div class="form-row">
				  <label for="title">업체명</label>
				  <input type="text" id="title" name="title" required>
				</div>

            <div class="form-row">
              <label for="content">채용 상세</label>
              <textarea id="content" name="content" rows="6" required></textarea>
            </div>

            <div class="form-row">
              <label for="deadline">마감일자</label>
              <input type="date" id="deadline" name="updated_at" required>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn-submit">등록</button>
              <a href="${pageContext.request.contextPath}/community/list.do?category=jobs" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>
