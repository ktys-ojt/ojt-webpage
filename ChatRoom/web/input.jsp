<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <title>�j�R�j�R�f����</title>
        <link rel="stylesheet" href="stylesheet.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    </head>
    <body>
        <div class="header">
            <div class="chat-room">TRPG��낤��</div>
            <div class="chat-title">�j�R�j�R�f����</div>
        </div>
        
        <div class="main">
            <div class="chat">

                <jsp:include page="error.jsp"></jsp:include>
                <jsp:include page="disp.jsp"></jsp:include>

                <%-- ���̓t�H�[�� --%>
                <form action="<%=request.getContextPath()%>/test.BbsServlet" method="post">
                    <table class="get-message">
                        <tr>
                            <th>�j�b�N�l�[��</th>
                            <td><input type="text" name="name"></td>
                        </tr>
                        <tr>
                            <th>���b�Z�[�W</th>
                            <td><input type="text" name="comment"></td>
                        </tr>
                    </table>
                    <input type="submit" value="����">
                    <input type="reset" value="���">
                </form>
            </div>
            <div class="sidebar">
                <h2>�X���b�h�ꗗ</h2>
                <ul class="chat-list">
                    <li>xxx</li>
                    <li>yyy</li>
                    <li>zzz</li>
                    <li>aaa</li>
                    <li>xxxyyyzzz</li>
                    <li>TRPG��낤��</li>
                    <li>CoC������</li>
                    <li>���G�̃_�[�N�z�[�X~�r�M�j���O�A�C�h��~</li>
                </ul>
            </div>
        </div>
        <script src="jQuery.js"></script>
    </body>
</html>
