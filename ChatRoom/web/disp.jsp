<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<%@page import="test.BbsBean, java.util.List"%>
<%
    List<BbsBean> beans = (List<BbsBean>) getServletContext().getAttribute("beans");
    if(beans != null){
        for(BbsBean bean: beans){
            out.println("ニックネーム : " + bean.getName());
            out.println("性別 : " + bean.getSex() + "<br>");
            out.println("発言 : " + bean.getComment() + "<br>");
        }
    }
%>