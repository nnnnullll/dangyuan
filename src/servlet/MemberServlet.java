package servlet;

import entity.*;
import service.GroupService;
import service.PartyService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
    UserService userservice = new UserService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        String method = request.getParameter("method");
        Integer id = null;
        String type = null;
        HttpSession session = request.getSession(false);
        if (session != null) {
            id = (Integer) session.getAttribute("id");
            type = (String) session.getAttribute("type");
        }
        if ("Group".equals(method)) {
            if ("admin".equals(type)) {
                List<GroupAll> groupAllList = userservice.getGroupAllByZbsjid(id);
                if (groupAllList != null) {
                    request.setAttribute("groupAllList", groupAllList);
                    request.getRequestDispatcher("ShowGroupAdmin.jsp").forward(request, response);
                } else {
                    response.sendRedirect("GroupShow.jsp");
                }
            } else {
                Integer zid = 0;
                if ("member".equals(type)) {
                    Member zuyuan = (Member) userservice.getUserInfo(type, id);
                    zid = zuyuan.getZid();
                } else if ("head".equals(type)) {
                    Head zuyuan = (Head) userservice.getUserInfo(type, id);
                    zid = zuyuan.getZid();
                }
                String[] g = userservice.getGroupByZid(zid);
                Head h = userservice.getGroupHead(zid);
                List<Member> memberList = userservice.getMemberByZid(zid);
                request.setAttribute("Groupp", g);
                request.setAttribute("Head", h);
                request.setAttribute("memberList", memberList);
                request.getRequestDispatcher("ShowGroup.jsp").forward(request, response);
            }


        } else if ("Branch".equals(method)) {
            List<GroupAll> groupAllList = userservice.getGroupAllByZbsjid(id);

            request.setAttribute("groupAllList", groupAllList);
            request.getRequestDispatcher("ShowBranch.jsp").forward(request, response);

        }

    }
}
