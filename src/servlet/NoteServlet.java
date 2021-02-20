package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Note;
import service.NoteService;

@WebServlet("/getnotebydx")
public class NoteServlet extends HttpServlet{
    private NoteService noteService = new NoteService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        String param = request.getParameter("dxx");
        List<Note> notelist=noteService.getNoteBydx(Integer.parseInt(request.getParameter("dxx")));
        request.setAttribute("notelist", notelist);
        request.getRequestDispatcher("/DeleteNote.jsp").forward(request, response); 
    }  
}
