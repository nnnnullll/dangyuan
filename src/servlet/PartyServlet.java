package servlet;

import entity.Party;
import service.PartyService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PartyServlet")
public class PartyServlet extends HttpServlet {
    PartyService partyService=new PartyService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        String param=request.getParameter("param");
        if("search".equals(param)){
            Integer zbid=(Integer)(request.getSession().getAttribute("zbid"));
//            Integer zbid=Integer.parseInt(request.getParameter("zbid"));
            Party party=partyService.getPartyById(zbid);
            request.setAttribute("party",party);
            request.getRequestDispatcher("/PartyShow.jsp").forward(request,response);
        }
        if("update".equals(param)){
            //从表格里面获得 并修改
            Integer zbid=Integer.parseInt(request.getParameter("zbid"));
            Integer zbsjid=Integer.parseInt(request.getParameter("zbsjid"));
            partyService.updateParty(zbid,zbsjid);
            response.sendRedirect("PartyServlet?param=search");
//            response.sendRedirect("PartyServlet?param=search&zbid="+zbid);
        }

    }
}
