package servlet;

import entity.Admin;
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
        String param=req.getParameter("param");
        req.setAttribute("type",type);
        if("goModify".equals(param)||"info".equals(param)){
            Integer id=Integer.parseInt(req.getParameter("id"));
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

        }
        else if("doModify".equals(param)){
            Integer id=Integer.parseInt(req.getParameter("id"));
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
        }
        else if("ModifyPwd".equals(param)){
            Integer id=Integer.parseInt(req.getParameter("id"));
            String mm=req.getParameter("mm");
            userService.changePwd(type,id,mm);
            req.getRequestDispatcher("userServlet?param=goModify&type="+type+"&id="+id).forward(req,resp);
        }

        if("member".equals(type)){
            if("addmember".equals(req.getParameter("param"))){
                Integer zid=Integer.parseInt(req.getParameter("zid"));
                Integer zbid=Integer.parseInt(req.getParameter("zbid"));
                Integer cyid=Integer.parseInt(req.getParameter("cyid"));
                userService.addMember(zid,cyid,zbid);
                resp.sendRedirect("/DangYuan2_war_exploded/GroupModify.jsp");
            }
            if("changeZt".equals(req.getParameter("param"))){
                Integer zt=Integer.parseInt(req.getParameter("zt"));
                System.out.println(zt);
                Integer zbid=Integer.parseInt(req.getParameter("zbid"));
                Integer cyid=Integer.parseInt(req.getParameter("cyid"));
                userService.changeZt(zt,cyid,zbid);
                resp.sendRedirect("/DangYuan2_war_exploded/GroupModify.jsp");
            }
            if("resetMm".equals(req.getParameter("param"))){
                Integer zbid=Integer.parseInt(req.getParameter("zbid"));
                Integer cyid=Integer.parseInt(req.getParameter("cyid"));
                Integer sf=Integer.parseInt(req.getParameter("sf"));
                if (sf==0){
                    userService.resetPwd("admin",cyid,zbid);
                }
                else if (sf==2){
                    userService.resetPwd("member",cyid,zbid);
                }
                else {
                    userService.resetPwd("head",cyid,zbid);
                }
                resp.sendRedirect("/DangYuan2_war_exploded/PartyModify.jsp");
            }
        }
        if("head".equals(type)){
            if("changehead".equals(req.getParameter("param"))){
                Integer zid=Integer.parseInt(req.getParameter("zid"));
                Integer zbid=Integer.parseInt(req.getParameter("zbid"));
                Integer zzid=Integer.parseInt(req.getParameter("zzid"));
                userService.addHead(zid,zzid,zbid);
                resp.sendRedirect("GroupServlet?param=search&zid="+zid);
            }
        }
        else if("admin".equals(type)){

        }

    }
}
