<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NikoNiko掲示板</title>
        <link rel="stylesheet" href="stylesheet.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    </head>
    <body>
        <div class="header">
            <div class="header-main">TRPGやろうず</div>
            <div class="header-sub">NikoNiko掲示板</div>
        </div>
        
        <div class="main">
            <div class="sidebar Bcolor-white">
                <h2>チャット一覧</h2>
                <ul class="chat-list">
                    <li>xxx</li>
                    <li>yyy</li>
                    <li>zzz</li>
                    <li>aaa</li>
                    <li>xxxyyyzzz</li>
                    <li><a href="input.jsp">TRPGやろうず</a></li>
                    <li>CoCが至高</li>
                    <li>今季のダークホース~ビギニングアイドル~</li>
                </ul>
            </div>

            <div class="chat Bcolor-white">
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
                            <th>コメント</th>
                            <td><input type="text" name="comment"></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="発言" class="btn">
                                <input type="reset" value="取消" class="btn">
                            </td>
                        </tr>
                    </table>
                    <input type="hidden" name="title" value="TRPGやろうず">
                </form>
            </div>
            <div class="clear"></div>
        </div>
        <script src="script.js"></script>
    </body>
</html>
