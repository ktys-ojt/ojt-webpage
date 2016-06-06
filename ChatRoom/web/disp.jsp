<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<%@page import="test.BbsBean, java.util.List"%>
<%
    List<BbsBean> beans = (List<BbsBean>) getServletContext().getAttribute("beans");
    if(beans != null){
        int i = 0;
        for(BbsBean bean: beans){
            i++;
            %>
            <div class="message">
                <%=i + " : "%>
                <span class="name"><%= bean.getName() %></span>
                <%= " : " + bean.getDateTime() + "<br>" %>
                <span class="comment"><%= bean.getComment() %></span>
                </table>
            </div>
            <%
        }
    }
%>