package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Note;
import service.NoteService;

@WebServlet("/getnotebydx")
public class NoteServlet {
    private NoteServlet noteService = new NoteServlet();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String param = request.getParameter("param");
        if("search".equals(param)) {//用户想要查看学生列表，进入主界面
            //查找本党小组信息
            List<Note> notelist=noteService.getNoteBydx(Integer.parseInt(request.getParameter("dxx")));
            request.setAttribute("notelist", notelist);
            //转发至index.jsp
            request.getRequestDispatcher("/DeleteNote.jsp").forward(request, response);
        }
    }

    private List<Note> getNoteBydx(int parseInt) {
        return null;
    }
    
}
