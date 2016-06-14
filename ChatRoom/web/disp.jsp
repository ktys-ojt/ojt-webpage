<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    } else {
        %>
        <div class="message">
            0 : <span class="name">名無しのGM</span>
             : 0000/00/00 00:00:00<br>
            <span class="comment">この掲示板にはまだコメントがありません</span>
            </table>
        </div>
        <%
    }
%>