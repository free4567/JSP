<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>글보기</title>
    <link rel="stylesheet" href="./css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <header>
            <h3>Board System v2.0</h3>
            <p>
                <span>프리님 반갑습니다</span>[회원정보].
                <a href="#">[로그아웃]</a>
            </p>
        </header>
        <main id="board">
            <section class="view">
                
                <table border="0">
                    <caption>글보기</caption>
                    <tr>
                        <th>제목</th>
                        <td><input type="text" name="title" value="test 글입니다.." readonly/></td>
                    </tr>
                    <tr>
                        <th>파일</th>
                        <td><a href="#">test파일첨부.txt</a>&nbsp;<span></span>0회 다운로드</td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td>
                            <textarea name="content" readonly></textarea>
                        </td>
                    </tr>                    
                </table>
                
                <div>
                    <a href="#" class="btn btnRemove">삭제</a>
                    <a href="./modify.html" class="btn btnModify">수정</a>
                    <a href="./list.html" class="btn btnList">목록</a>
                </div>

                <!-- ëê¸ëª©ë¡ -->
                <section class="commentList">
                    <h3>댓글목록</h3>                   
                    
                    <p class="empty">등록된 댓글이 없습니다.</p>

                </section>

                <!-- ëê¸ì°ê¸° -->
                <section class="commentForm">
                    <h3>댓글쓰기</h3>
                    <form action="#">
                        <textarea name="content">댓글내용입력</textarea>
                        <div>
                            <a href="#" class="btn btnCancel">취소</a>
                            <input type="submit" value="작성완료" class="btn btnComplete"/>
                        </div>
                    </form>
                </section>

            </section>
        </main>
        <footer>
            <p>Copyright chhak.or.kr</p>
        </footer>
    </div>    
</body>
</html>