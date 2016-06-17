package test;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
        //アプリケーション属性のメッセージリストを取得
        ServletContext application = getServletContext();
        List<BbsBean> messageList = (List<BbsBean>) application.getAttribute("beans");
        //リストがない場合、新規に作成
        if (messageList == null) {
            messageList = new ArrayList<>();
        }

        //インスタンス作成
        BbsBean bean = new BbsBean();
        List<ErrorBean> errorList = new ArrayList<>();

        //リクエストを取得
        String name = request.getParameter("name");
        String comment = request.getParameter("comment");
        String dateTimeFormat = "yyyy/MM/dd HH:mm:ss";

        //beanに格納
        bean.setName(name);
        LocalDateTime dateTime = LocalDateTime.now();
        bean.setDateTime(dateTime.
                format(DateTimeFormatter.ofPattern(dateTimeFormat)));
        bean.setComment(comment.replaceAll("\n", "<br>"));

        //入力エラーがないかチェックする
        //そのうちjQueryに任せる
        errorCheck("name", name, errorList);
        errorCheck("comment", comment, errorList);

        //エラーリストに要素がなければメッセージに格納
        //あればエラーとしてレスポンス(リクエストとして)を返す
        if (errorList.isEmpty()) {
            messageList.add(bean);
            application.setAttribute("beans", messageList);
        } else {
            request.setAttribute("error", errorList);
        }

        //トップ画面にフォワード(リダイレクトのほうがいいか？)
        RequestDispatcher dispatcher = request.
                getRequestDispatcher("/input.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * 入力があるかチェックする.
     * @param key beanのどの要素かを表す.
     * @param name 内容.
     * @param errorList 受渡し用のリスト.リストに要素があればエラーを示す.
     */
    private void errorCheck(String key, String name, List<ErrorBean> errorList) {
        if (name == null || name.isEmpty()) {
            name = "未入力です。入力してください。";
            ErrorBean error = new ErrorBean();
            error.setItem(key);
            error.setMessage(name);
            errorList.add(error);
        }
    }

}
