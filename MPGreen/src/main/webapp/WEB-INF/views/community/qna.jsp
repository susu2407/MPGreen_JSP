<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./_header.jsp" %>
<body class="page-community">
  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/list.do?category=qna" class="sidebar-text">질문과 답변</a>
      </div>
    </div>

    <section id="container">

      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">커뮤니티</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/notice.do">공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=news">뉴스 및 칼럼</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=jobs">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free">자유게시판</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna" style="color:#fff">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">질문과 답변</h3>
        </div>

        <div class="notice-wrap">
          <form class="notice-toolbar" action="${pageContext.request.contextPath}/community/list.do" method="get">
            <input type="hidden" name="category" value="qna"/>
            <select class="notice-field" name="field" aria-label="검색 대상 선택">
              <option value="all">전체</option>
              <option value="title">제목</option>
              <option value="writer">작성자</option>
              <option value="status">상태</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" />
            <button type="submit" class="notice-btn">검색</button>
          </form>

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
		    <!-- 제목 헤더 가운데 -->
		    <th class="col-title" style="text-align:center;">제목</th>
		    <th class="col-writer">작성자</th>
		    <th class="col-date">작성일</th>
		    <th class="col-status">상태</th>
		  </tr>
		</thead>
		<tbody>
		  <c:forEach var="board" items="${dtoList}">
		    <tr>
		      <td class="col-no">${board.boardId}</td>
		      <!-- 제목 본문도 가운데 -->
		      <td class="col-title" style="text-align:center;">
		        <div class="title-wrap ${board.secret ? 'qna-lock' : ''}" 
		             style="display:inline-block; text-align:center; width:100%;">
		          <c:if test="${board.secret}">
		            <img src="../images/ico-lock.png" alt="비밀글" class="lock">
		          </c:if>
		          <a href="${pageContext.request.contextPath}/community/view.do?category=qna&boardId=${board.boardId}">
		            ${board.title}
		          </a>
		        </div>
		      </td>
		      <td>${board.writerName}</td>
		      <td>${board.created_at}</td>
		      <td>
		        <c:choose>
		          <c:when test="${board.qnaStatus eq 'wait'}">
		            <span class="qna-status is-await">답변대기</span>
		          </c:when>
		          <c:when test="${board.qnaStatus eq 'done'}">
		            <span class="qna-status is-done">답변완료</span>
		          </c:when>
		        </c:choose>
		      </td>
		    </tr>
		  </c:forEach>
		</tbody>
         
          </table>

          <!-- 페이지네이션 -->
          <div class="page">
            <div class="prev">
              <a href="?category=qna&pg=1" class="paging"><img src="../images/btn-first-page.png"></a>
              <a href="?category=qna&pg=${pagenationDTO.prevPage}" class="paging"><img src="../images/btn-prev-page.png"></a>
            </div>
            <div class="pagenumber">
              <c:forEach var="i" begin="${pagenationDTO.startPage}" end="${pagenationDTO.endPage}">
                <a href="?category=qna&pg=${i}" class="${i == pagenationDTO.currentPage ? 'active' : ''}">${i}</a>
              </c:forEach>
            </div>
            <div class="last">
              <a href="?category=qna&pg=${pagenationDTO.nextPage}" class="paging"><img src="../images/btn-next-page.png"></a>
              <a href="?category=qna&pg=${pagenationDTO.totalPage}" class="paging"><img src="../images/btn-last-page.png"></a>
            </div>
          </div>

          <a href="${pageContext.request.contextPath}/community/write.do?category=qna" class="btn-write">글쓰기</a>
        </div>
      </div>
    </section>
  </main>
  <%@ include file="./_footer.jsp" %>
</body>
