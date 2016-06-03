<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ニコニコ掲示板</title>
        <link rel="stylesheet" href="stylesheet.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    </head>
    <body>
        <div class="header">
            <div class="chat-room">TRPGやろうず</div>
            <div class="chat-title">ニコニコ掲示板</div>
        </div>
        
        <div class="main">
            <div class="chat">

                <jsp:include page="error.jsp"></jsp:include>
                <jsp:include page="disp.jsp"></jsp:include>

                <%-- 入力フォーム --%>
                <form action="<%=request.getContextPath()%>/test.BbsServlet" method="post">
                    <table class="get-message">
                        <tr>
                            <th>ニックネーム</th>
                            <td><input type="text" name="name"></td>
                        </tr>
                        <tr>
                            <th>メッセージ</th>
                            <td><input type="text" name="comment"></td>
                        </tr>
                    </table>
                    <input type="submit" value="発言">
                    <input type="reset" value="取消">
                </form>
            </div>
            <div class="sidebar">
                <h2>スレッド一覧</h2>
                <ul class="chat-list">
                    <li>xxx</li>
                    <li>yyy</li>
                    <li>zzz</li>
                    <li>aaa</li>
                    <li>xxxyyyzzz</li>
                    <li>TRPGやろうず</li>
                    <li>CoCが至高</li>
                    <li>今季のダークホース~ビギニングアイドル~</li>
                </ul>
            </div>
        </div>
        <script src="jQuery.js"></script>
    </body>
</html>
