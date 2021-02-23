package servlet;

import entity.*;
import service.LoginService;
import service.UserService;
import util.Token;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/loginService")
public class LoginServlet extends HttpServlet {
    UserService userService = new UserService();
    LoginService loginService=new LoginService();

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

            List<Activity> activityList=loginService.getsixActivity();
            Integer [] act_hdid=new Integer[activityList.size()];
            for(int i=0;i<activityList.size();i++){
                act_hdid[i]=activityList.get(i).getHdid();
            }
            String[] photoArr=loginService.getsixPhoto(act_hdid);
            req.getSession().setAttribute("activityList",activityList);
            req.getSession().setAttribute("photoArr",photoArr);

            req.getRequestDispatcher("index.jsp").forward(req, resp);

        } else {
            req.setAttribute("error", "用户名、密码或类型不匹配，请重新登陆！");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }


}



