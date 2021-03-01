package servlet;

import java.io.Console;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Note;
import service.NoteService;

@WebServlet("/NoteServlet")
public class NoteServlet extends HttpServlet{
    private NoteService noteService = new NoteService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        String param = request.getParameter("param");
        if("add".equals(param)) {
            String bt = request.getParameter("bt");
            String nr = request.getParameter("nr");
            String sj = request.getParameter("sj");
            Integer dx =Integer.parseInt(request.getParameter("dx"));
            noteService.addNote(bt, nr, sj, dx);
            request.getRequestDispatcher("PushNote.jsp").forward(request, response);

        }

        else if("delete".equals(param)){
            Integer ggid =Integer.parseInt(request.getParameter("ggid"));
            noteService.deleteNote(ggid);
            response.sendRedirect("NoteServlet?param=alll");

        }else if("all".equals(param)){
            String type = null;
            HttpSession session = request.getSession(false);
            if (session != null) {
                type = (String) session.getAttribute("type");
            }

            List<Note> notelist=noteService.getAllByType(type);
            request.setAttribute("notelist", notelist);
            request.getRequestDispatcher("Note.jsp").forward(request, response);
        }else if("alll".equals(param)){
            String type = null;
            HttpSession session = request.getSession(false);
            if (session != null) {
                type = (String) session.getAttribute("type");
            }

            List<Note> notelist=noteService.getAllByType(type);
            request.setAttribute("notelist", notelist);
            request.getRequestDispatcher("DeleteNote.jsp").forward(request, response);
        }
    }
}
