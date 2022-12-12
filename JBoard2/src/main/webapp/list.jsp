<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
    <link rel="stylesheet" href="./css/style.css"/>
    <style>
        #board > .list > form {
            float: right;
            margin-bottom: -14px;
        }

        #board > .list > form > input[name=search]{
            width: 200px;
            height: 26px;
            text-indent: 6px;
            border: 1px solid #d7d7d7;
        }
        #board > .list > form > input[type=submit]{
            border: 1px solid #d7d7d7;
            background: #f2f2f2; 
            color: #111;
            padding: 6px;
        }
    </style>
</head>
<body>
    <div id="wrapper">
        <header>
            <h3>Board System v2.0</h3>
            <p>
                <span>프리님 반갑습니다</span>[회원정보]
                <a href="./user/login.html">[로그아웃]</a>
            </p>
        </header>
        <main id="board">
            <section class="list">                
                <form action="#">
                    <input type="text" name="search" placeholder="제목 키워드, 글쓴이 검색">
                    <input type="submit" value="검색">
                </form>
                
                <table border="0">
                    <caption>글목록</caption>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>글쓴이</th>
                        <th>날짜</th>
                        <th>조회</th>
                    </tr>                    
                    <tr>
                        <td>347</td>
                        <td><a href="./view.html">파일첨부테스트[0]</a></td>
                        <td>프리</td>
                        <td>22-11-25</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>346</td>
                        <td><a href="./view.html">제목입니다[0]</a></td>
                        <td>프리</td>
                        <td>22-11-25</td>
                        <td>0</td>
                    </tr>
                </table>
                <a href="./write.html" class="btn btnWrite">0</a>
                
            </section>
        </main>
        <footer>
            <p>Copyright chhak.or.kr</p>
        </footer>
    </div>    
</body>
</html>