<%@page import="java.util.List, test.ErrorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    List<ErrorBean> errors = (List<ErrorBean>) request.getAttribute("error");
    if(errors != null){
        %>
        <h3 class="error-message">※入力情報が足りません</h3>
        <table class="error">
        <%
        for (ErrorBean error: errors) {
            String message = null;
            %>
            <tr>
        <%
            if (error.getItem().equals("name")) {
                message = "<th>ニックネーム<td>" + error.getMessage();
            } else if (error.getItem().equals("comment")) {
                message = "<th>メッセージ<td>" + error.getMessage();
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
