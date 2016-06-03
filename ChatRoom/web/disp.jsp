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
            <%
            out.println(i + " : " + bean.getName());
            out.println(" : " + bean.getDateTime() + "<br>");
            out.println(" " + bean.getComment());
            %>
                    </tr>
                </table>
            </div>
            <%
        }
    }
%>