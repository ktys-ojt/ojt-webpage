<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<%@page import="test.BbsBean, java.util.List"%>
<%
    List<BbsBean> beans = (List<BbsBean>) getServletContext().getAttribute("beans");
    if(beans != null){
        for(BbsBean bean: beans){
            out.println("�j�b�N�l�[�� : " + bean.getName());
            out.println("���� : " + bean.getSex() + "<br>");
            out.println("���� : " + bean.getComment() + "<br>");
        }
    }
%>