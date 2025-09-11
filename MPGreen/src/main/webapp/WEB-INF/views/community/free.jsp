<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="./_header.jsp" %>
<body class="page-community">
  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/list.do?category=free" class="sidebar-text">자유게시판</a>
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
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free" style="color:#fff">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">자유게시판</h3>
        </div>

        <div class="notice-wrap">
          <!-- 검색폼 -->
          <form class="notice-toolbar" action="${pageContext.request.contextPath}/community/list.do" method="get">
            <input type="hidden" name="category" value="free"/>
            <select class="notice-field" name="field" aria-label="검색 대상 선택">
              <option value="all">전체</option>
              <option value="title">제목</option>
              <option value="writer">작성자</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" />
            <button type="submit" class="notice-btn">검색</button>
          </form>

          <!-- 글 목록 -->
          <table class="notice-table">
            <colgroup>
              <col class="col-no">
              <col class="col-title">
              <col class="col-writer">
              <col class="col-date">
              <col class="col-views">
            </colgroup>
				 <thead>
				  <tr>
				    <th class="col-no">번호</th>
				    <!-- 제목 헤더 가운데 -->
				    <th class="col-title" style="text-align:center;">제목</th>
				    <th class="col-writer">작성자</th>
				    <th class="col-date">작성일</th>
				    <th class="col-views">조회</th>
				  </tr>
				</thead>
				<tbody>
				  <c:forEach var="board" items="${dtoList}" varStatus="status">
				    <tr>
				      <td class="col-no">${pagenationDTO.currentPageStartNum - status.index}</td>
				      <!-- 제목 본문 가운데 -->
				      <td class="col-title" style="text-align:center;">
				        <a href="${pageContext.request.contextPath}/community/view.do?category=free&boardId=${board.boardId}">
				          ${board.title}
				        </a>
				      </td>
				      <td>${board.writerName}</td>
				      <td>${board.created_at}</td>
				      <td>${board.viewCount}</td>
				    </tr>
				  </c:forEach>
				</tbody>
            
          </table>

          <!-- 페이징 -->
          <div class="page">
            <c:if test="${pagenationDTO.pageGroupStart > 1}">
              <a href="${pageContext.request.contextPath}/community/list.do?category=free&pg=${pagenationDTO.pageGroupStart-1}" class="paging">
                <img src="../images/btn-prev-page.png">
              </a>
            </c:if>

            <div class="pagenumber">
              <c:forEach var="num" begin="${pagenationDTO.pageGroupStart}" end="${pagenationDTO.pageGroupEnd}">
                <a href="${pageContext.request.contextPath}/community/list.do?category=free&pg=${num}" class="${pagenationDTO.currentPage == num ? 'active' : ''}">
                  ${num}
                </a>
              </c:forEach>
            </div>

            <c:if test="${pagenationDTO.pageGroupEnd < pagenationDTO.lastPageNum}">
              <a href="${pageContext.request.contextPath}/community/list.do?category=free&pg=${pagenationDTO.pageGroupEnd+1}" class="paging">
                <img src="../images/btn-next-page.png">
              </a>
            </c:if>
          </div>

          <!-- 글쓰기 버튼 -->
          <a href="${pageContext.request.contextPath}/community/write.do?category=free" class="btn-write">글쓰기</a>
        </div>
      </div>
    </section>
  </main>

  <%@ include file="./_footer.jsp" %>
</body>
