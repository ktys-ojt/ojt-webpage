/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author k_yoshida
 */
public class BbsServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //request.setCharacterEncoding("Shift_JIS");
        ServletContext context = getServletContext();
        List<BbsBean> messageList = (List<BbsBean>) context.getAttribute("beans");
        if (messageList == null) {
            messageList = new ArrayList<>();
        }
        BbsBean bean = new BbsBean();
        List<ErrorBean> errorList = new ArrayList<>();

        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String comment = request.getParameter("comment");

        errorCheck("name", name, bean, errorList);
        bean.setName(name);
        errorCheck("sex", sex, bean, errorList);
        bean.setSex(sex);
        errorCheck("comment", comment, bean, errorList);
        bean.setComment(comment);

/*
        if (name == null || name.isEmpty()) {
            name = "未入力です。入力してください。";
            ErrorBean error = new ErrorBean();
            error.setItem(name);
            error.setMessage(name);
            errorList.add(error);
        } else {
            bean.setName(name);
        }
*/

        if (errorList.isEmpty()) {
            messageList.add(bean);
            context.setAttribute("beans", messageList);
        } else {
            request.setAttribute("error", errorList);
        }

        RequestDispatcher dispatcher = request.
                getRequestDispatcher("/input.jsp");
        dispatcher.forward(request, response);
    }

    private void errorCheck(String key, String name, BbsBean bean, List<ErrorBean> errorList) {
        if (name == null || name.isEmpty()) {
            name = "未入力です。入力してください。";
            ErrorBean error = new ErrorBean();
            error.setItem(key);
            error.setMessage(name);
            errorList.add(error);
        }
    }

}
