<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <title>掲示板</title>
        <link rel="stylesheet" href="flame.css">
    </head>
    <body>
        <header>
            <h1>掲示板</h1>
        </header>

        <jsp:include page="error.jsp"></jsp:include>

        <form action="<%=request.getContextPath()%>/test.BbsServlet" method="post">
            <table>
                <tr>
                    <th>
                        ニックネーム
                    </th>
                    <td>
                        <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <th>
                        性別
                    </th>
                    <td>
                        <input type="radio" name="sex" value="男性" checked>男性
                        <input type="radio" name="sex" value="女性">女性
                    </td>
                </tr>
                <tr>
                    <th>
                        メッセージ
                    </th>
                    <td>
                        <input type="text" name="comment">
                    </td>
                </tr>
            </table>
                <input type="submit" value="発言">
                <input type="reset" value="取消">
            </p>
        </form>

        <jsp:include page="disp.jsp"></jsp:include>
    </body>
</html>
