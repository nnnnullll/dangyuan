package servlet;

import entity.Groupp;
import entity.Head;
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
        System.out.println("type:"+type);
//        Integer id=Integer.parseInt(req.getParameter("id"));
//        Object user=userService.getUserInfo(type,id);
        if("member".equals(type)){

        }else if("head".equals(type)){
            if("changehead".equals(req.getParameter("way"))){
                Integer zid=Integer.parseInt(req.getParameter("zid"));
                Integer zbid=Integer.parseInt(req.getParameter("zbid"));
                Integer zzid=Integer.parseInt(req.getParameter("zzid"));
                userService.addHead(zid,zzid,zbid);
                resp.sendRedirect("GroupServlet?param=search&zid="+zid);
            }
        }else if("admin".equals(type)){

        }

    }
}
