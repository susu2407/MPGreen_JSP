<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community notice-write">
  <main>
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/notice.do" class="sidebar-text">공지사항</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/notice_write.do" class="sidebar-text">글쓰기</a>
      </div>
    </div>

    <section id="container">
      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">커뮤니티</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/notice.do" style="color:#fff" >공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=news">뉴스 및 칼럼</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=jobs">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free">자유게시판</a></li>
            <li class="item "><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna" >질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">공지사항</h3>
        </div>

        <div class="notice-wrap">
          <form class="write-form" action="${pageContext.request.contextPath}/community/notice_write.do" method="post">
            
            <input type="hidden" name="category" value="notice">
            
            <div class="form-row">
              <label for="title">제목</label>
              <input type="text" id="title" name="title" required>
            </div>

            <div class="form-row">
              <label for="writer">작성자</label>
              <!-- 로그인된 사용자 정보 활용 -->
              <input type="hidden" name="writerId" value="${sessionScope.loginUser.userId}">
              <input type="text" id="writer" value="${sessionScope.loginUser.userName}" readonly>
            </div>

            <div class="form-row">
              <label for="content">내용</label>
              <textarea id="content" name="content" rows="10" required></textarea>
            </div>

            <!-- 파일 업로드 기능 나중에 구현할 때만 사용 -->
            <!--
            <div class="form-row">
              <label for="file">첨부파일</label>
              <input type="file" id="file" name="file">
            </div>
            -->

            <div class="form-actions">
              <button type="submit" class="btn-submit">등록</button>
              <a href="${pageContext.request.contextPath}/community/notice.do" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>


