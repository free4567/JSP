<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>글수정</title>
    <link rel="stylesheet" href="./css/style.css"/>    
</head>
<body>
    <div id="wrapper">
        <header>
            <h3>Board System v2.0</h3>
            <p>
                <span>프리님반갑습니다.</span>[회원정보]
                <a href="#">[로그아웃]</a>
            </p>
        </header>
        <main id="board">
            <section class="modify">

                <form action="#">
                    <table border="0">
                        <caption>굴수정</caption>
                        <tr>
                            <th>제목</th>
                            <td><input type="text" name="title" placeholder="test 제목"/></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea name="content">test 내용</textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>파일</th>
                            <td>
                                <input type="file" name="file"/>
                            </td>
                        </tr>
                    </table>
                    
                    <div>
                        <a href="./view.html" class="btn btnCancel">취소</a>
                        <input type="submit" value="작성완료" class="btn btnComplete"/>
                    </div>
                </form>

            </section>
        </main>
        <footer>
            <p>Copyright chhak.or.kr</p>
        </footer>
    </div>    
</body>
</html>