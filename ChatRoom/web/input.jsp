<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <title>�f����</title>
        <link rel="stylesheet" href="flame.css">
    </head>
    <body>
        <header>
            <h1>�f����</h1>
        </header>

        <jsp:include page="error.jsp"></jsp:include>

        <form action="<%=request.getContextPath()%>/test.BbsServlet" method="post">
            <table>
                <tr>
                    <th>
                        �j�b�N�l�[��
                    </th>
                    <td>
                        <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <th>
                        ����
                    </th>
                    <td>
                        <input type="radio" name="sex" value="�j��" checked>�j��
                        <input type="radio" name="sex" value="����">����
                    </td>
                </tr>
                <tr>
                    <th>
                        ���b�Z�[�W
                    </th>
                    <td>
                        <input type="text" name="comment">
                    </td>
                </tr>
            </table>
                <input type="submit" value="����">
                <input type="reset" value="���">
            </p>
        </form>

        <jsp:include page="disp.jsp"></jsp:include>
    </body>
</html>
