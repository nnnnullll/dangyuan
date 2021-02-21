package servlet;

import entity.Member;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
    UserService userService=new UserService();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type=req.getParameter("type");
        Integer id=Integer.parseInt(req.getParameter("id"));
        Object user=userService.getUserInfo(type,id);
        if("member".equals(type)){

        }else if("head".equals(type)){

        }else if("admin".equals(type)){

        }

    }
}
