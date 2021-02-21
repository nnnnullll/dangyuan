package servlet;

import entity.Admin;
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
        String param=req.getParameter("param");
        String type=req.getParameter("type");
        Integer id=Integer.parseInt(req.getParameter("id"));

        req.setAttribute("type",type);
        if("goModify".equals(param)||"info".equals(param)){
            Object userinfo=userService.getUserInfo(type,id);
            if("member".equals(type)){
                Member user=(Member) userinfo;
                req.setAttribute("user",user);
            }else if("head".equals(type)){
                Head user=(Head) userinfo;
                req.setAttribute("user",user);
            }else if("admin".equals(type)){
                Admin user=(Admin) userinfo;
                req.setAttribute("user",user);
            }
            if("goModify".equals(param)){
                req.getRequestDispatcher("UserModify.jsp").forward(req,resp);
            }
            else if("info".equals(param)){
                req.getRequestDispatcher("UserInfo.jsp").forward(req,resp);
            }

        }else if("doModify".equals(param)){
            String xm=req.getParameter("xm");
            String xb=req.getParameter("xb");
            String tx=req.getParameter("tx");
            Integer dyid=Integer.parseInt(req.getParameter("dyid"));
            String sjh=req.getParameter("sjh");
            String sfz=req.getParameter("sfz");
            String csrq=req.getParameter("csrq");
            String jg=req.getParameter("jg");
            String sqrq=req.getParameter("sqrq");
            String jjrq=req.getParameter("jjrq");
            String fzrq=req.getParameter("fzrq");
            String ybrq=req.getParameter("ybrq");
            String zsrq=req.getParameter("zsrq");
            String sqs1=req.getParameter("sqs1");
            String sqs2=req.getParameter("sqs2");
            String zys1=req.getParameter("zys1");
            String zys2=req.getParameter("zys2");
            userService.updateUserInfo(type,id,xm,xb,tx,csrq,jg,sfz,sjh,dyid,sqrq,jjrq,fzrq,ybrq,zsrq,sqs1,sqs2,zys1,zys2);
        }else if("ModifyPwd".equals(param)){
            String mm=req.getParameter("mm");
            userService.changePwd(type,id,mm);
            req.getRequestDispatcher("userServlet?param=goModify&type="+type+"&id="+id).forward(req,resp);
        }


    }
}
