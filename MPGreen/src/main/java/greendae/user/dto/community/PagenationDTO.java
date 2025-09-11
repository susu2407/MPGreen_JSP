package greendae.user.dto.community;

public class PagenationDTO {

    private int total;                 // 전체 글 개수
    private int start;                 // LIMIT 시작 offset
    private int currentPage;           // 현재 페이지 번호
    private int currentPageStartNum;   // 현재 페이지에서 시작 글 번호
    private int lastPageNum;           // 마지막 페이지 번호
    private int pageGroupStart;        // 페이지 그룹 시작
    private int pageGroupEnd;          // 페이지 그룹 끝
    private boolean prev;
    private boolean next;
    
    
    
    public boolean isPrev() { return prev; }
    public void setPrev(boolean prev) { this.prev = prev; }

    public boolean isNext() { return next; }
    public void setNext(boolean next) { this.next = next; }

    // --- Getter & Setter ---
    public int getTotal() { return total; }
    public void setTotal(int total) { this.total = total; }

    public int getStart() { return start; }
    public void setStart(int start) { this.start = start; }

    public int getCurrentPage() { return currentPage; }
    public void setCurrentPage(int currentPage) { this.currentPage = currentPage; }

    public int getCurrentPageStartNum() { return currentPageStartNum; }
    public void setCurrentPageStartNum(int currentPageStartNum) { this.currentPageStartNum = currentPageStartNum; }

    public int getLastPageNum() { return lastPageNum; }
    public void setLastPageNum(int lastPageNum) { this.lastPageNum = lastPageNum; }

    public int getPageGroupStart() { return pageGroupStart; }
    public void setPageGroupStart(int pageGroupStart) { this.pageGroupStart = pageGroupStart; }

    public int getPageGroupEnd() { return pageGroupEnd; }
    public void setPageGroupEnd(int pageGroupEnd) { this.pageGroupEnd = pageGroupEnd; }

    // --- JSP에서 직접 쓰기 편한 편의 메서드 추가 ---
    public int getStartPage() {
        return pageGroupStart;
    }

    public int getEndPage() {
        return pageGroupEnd;
    }

    public int getPrevPage() {
        return (pageGroupStart > 1) ? pageGroupStart - 1 : 1;
    }

    public int getNextPage() {
        return (pageGroupEnd < lastPageNum) ? pageGroupEnd + 1 : lastPageNum;
    }
    
    public int getTotalPage() {
        return lastPageNum;  // 이미 계산된 전체 페이지 수
    }


    @Override
    public String toString() {
        return "PagenationDTO [total=" + total + ", start=" + start + ", currentPage=" + currentPage
                + ", currentPageStartNum=" + currentPageStartNum + ", lastPageNum=" + lastPageNum
                + ", pageGroupStart=" + pageGroupStart + ", pageGroupEnd=" + pageGroupEnd + "]";
    }
}
