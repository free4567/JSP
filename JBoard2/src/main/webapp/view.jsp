<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ê¸ë³´ê¸°</title>
    <link rel="stylesheet" href="./css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <header>
            <h3>Board System v1.0</h3>
            <p>
                <span>íê¸¸ë</span>ë ë°ê°ìµëë¤.
                <a href="#">[ë¡ê·¸ìì]</a>
            </p>
        </header>
        <main id="board">
            <section class="view">
                
                <table border="0">
                    <caption>ê¸ë³´ê¸°</caption>
                    <tr>
                        <th>ì ëª©</th>
                        <td><input type="text" name="title" value="ì ëª©ìëë¤." readonly/></td>
                    </tr>
                    <tr>
                        <th>íì¼</th>
                        <td><a href="#">2020ë ìë°ê¸° ë§¤ì¶ìë£.xls</a>&nbsp;<span>7</span>í ë¤ì´ë¡ë</td>
                    </tr>
                    <tr>
                        <th>ë´ì©</th>
                        <td>
                            <textarea name="content" readonly>ë´ì© ìíìëë¤.</textarea>
                        </td>
                    </tr>                    
                </table>
                
                <div>
                    <a href="#" class="btn btnRemove">ì­ì </a>
                    <a href="./modify.html" class="btn btnModify">ìì </a>
                    <a href="./list.html" class="btn btnList">ëª©ë¡</a>
                </div>

                <!-- ëê¸ëª©ë¡ -->
                <section class="commentList">
                    <h3>ëê¸ëª©ë¡</h3>                   

                    <article>
                        <span class="nick">ê¸¸ëì´</span>
                        <span class="date">20-05-20</span>
                        <p class="content">ëê¸ ìí ìëë¤.</p>                        
                        <div>
                            <a href="#" class="remove">ì­ì </a>
                            <a href="#" class="modify">ìì </a>
                        </div>
                    </article>

                    <p class="empty">ë±ë¡ë ëê¸ì´ ììµëë¤.</p>

                </section>

                <!-- ëê¸ì°ê¸° -->
                <section class="commentForm">
                    <h3>ëê¸ì°ê¸°</h3>
                    <form action="#">
                        <textarea name="content">ëê¸ë´ì© ìë ¥</textarea>
                        <div>
                            <a href="#" class="btn btnCancel">ì·¨ì</a>
                            <input type="submit" value="ìì±ìë£" class="btn btnComplete"/>
                        </div>
                    </form>
                </section>

            </section>
        </main>
        <footer>
            <p>âCopyright chhak.or.kr</p>
        </footer>
    </div>    
</body>
</html>