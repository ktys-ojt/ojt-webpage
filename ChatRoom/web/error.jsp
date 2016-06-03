<%@page import="java.util.List, test.ErrorBean"%>
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>

<%
    List<ErrorBean> errors = (List<ErrorBean>) request.getAttribute("error");
    if(errors != null){
        %>
        <h3 class="error-message">�����͏�񂪑���܂���</h3>
        <table class="error">
        <%
        for (ErrorBean error: errors) {
            String message = null;
            %>
            <tr>
        <%
            if (error.getItem().equals("name")) {
                message = "<th>�j�b�N�l�[��<td>" + error.getMessage();
            } else if (error.getItem().equals("comment")) {
                message = "<th>���b�Z�[�W<td>" + error.getMessage();
            }
            out.println(message);
            %>
            </tr>
        <%
        }
        %>
        </table>
        <%
    }
%>
