package servlet;

import entity.Admin;
import entity.Head;
import entity.Member;
import service.LoginService;
import service.UserService;
import util.Token;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/loginService")
public class LoginServlet extends HttpServlet {
    UserService userService = new UserService();

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = req.getParameter("type");
        Integer id = Integer.parseInt(req.getParameter("id"));
        String pwd = req.getParameter("pwd");
        Boolean flag = false;

        if (Token.isTokenStringValid(req.getParameter(Token.TOKEN_STRING_NAME), req.getSession())) {
            if ("member".equals(type)) {
                Member member = (Member) userService.getUserInfo("member", id);
                if ((member != null && member.getMm().equals(pwd)))
                    flag = true;
            }
        } else if ("head".equals(type)) {
            Head head = (Head) userService.getUserInfo("head", id);
            if (head != null & head.getMm().equals(pwd)) {
                flag = true;
            }
        } else {
            Admin admin = (Admin) userService.getUserInfo("admin", id);
            if (admin != null & admin.getMm().equals(pwd)) {
                flag = true;
            }
        }
        if (flag == true) {
            req.getSession().setAttribute("id", id);
            req.getSession().setAttribute("type", type);
            req.getRequestDispatcher("index.jsp").forward(req, resp);

        } else {
            req.setAttribute("error", "用户名、密码或类型不匹配，请重新登陆！");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }


}



