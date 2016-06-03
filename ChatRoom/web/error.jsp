<%@page import="java.util.List, test.ErrorBean"%>
<%@page contentType="text/html" pageEncoding="Shift_JIS"%>

<%
    List<ErrorBean> errors = (List<ErrorBean>) request.getAttribute("error");
    if(errors != null){
        for (ErrorBean error: errors) {
            out.println(error.getItem() + ":" + error.getMessage() + "<br>");
        }
    }
%>
