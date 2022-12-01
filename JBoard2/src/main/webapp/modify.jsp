<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ê¸ìì </title>
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
            <section class="modify">

                <form action="#">
                    <table border="0">
                        <caption>ê¸ìì </caption>
                        <tr>
                            <th>ì ëª©</th>
                            <td><input type="text" name="title" placeholder="ì ëª©ì ìë ¥íì¸ì."/></td>
                        </tr>
                        <tr>
                            <th>ë´ì©</th>
                            <td>
                                <textarea name="content"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>íì¼</th>
                            <td>
                                <input type="file" name="file"/>
                            </td>
                        </tr>
                    </table>
                    
                    <div>
                        <a href="./view.html" class="btn btnCancel">ì·¨ì</a>
                        <input type="submit" value="ìì±ìë£" class="btn btnComplete"/>
                    </div>
                </form>

            </section>
        </main>
        <footer>
            <p>âCopyright chhak.or.kr</p>
        </footer>
    </div>    
</body>
</html>