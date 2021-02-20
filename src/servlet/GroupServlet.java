package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import entity.Groupp;
import service.GroupService;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/GroupServlet")
public class GroupServlet  extends HttpServlet{
    // extends HttpServlet
    /**
     *
     */
    private static final long serialVersionUID = -2232798026417842828L;
    private GroupService groupService=new GroupService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, ServletException {

        request.setCharacterEncoding("UTF-8");
        String param = request.getParameter("param");
        if("search".equals(param)) {//用户想要查看学生列表，进入主界面
            //查找本党小组信息
            Groupp groupp=groupService.getGroupById(Integer.parseInt(request.getParameter("zid")));
            request.setAttribute("groupp", groupp);

            //转发至index.jsp
            request.getRequestDispatcher("/GroupShow.jsp").forward(request, response);
        }
        if("update".equals(param)) {//修改学生
            Integer zid=Integer.parseInt(request.getParameter("zid"));
            String zm = request.getParameter("zm");
            groupService.updateInfo(zm,zid);
            //用户想要查看学生列表，进入主界面
            response.sendRedirect("GroupServlet?param=search&zid="+zid);
        }
//        if("add".equals(param)) {//添加学生
//            int xh = Integer.parseInt(request.getParameter("xh"));//在此行添加一个断点
//            String xm = request.getParameter("xm");
//            String xb = request.getParameter("xb");
//            String csrq = request.getParameter("csrq");
//            String jg = request.getParameter("jg");
//            String sjhm = request.getParameter("sjhm");
//            String yxh = request.getParameter("yxh");
//            String zt = request.getParameter("zt");
//            int age = Integer.parseInt(request.getParameter("age"));
//            Student stu = new Student(xh,xm,xb,csrq,jg,sjhm,yxh,zt,age);
//            stuService.SaveStudent(stu);
//
//            //用户想要查看学生列表，进入主界面
//            response.sendRedirect("stuServlet?param=list");
//        }
//        if("modify".equals(param)){//准备进入修改页面，在进入修改页面之前，先查询要修改的学生对象
//            int xh = Integer.parseInt(request.getParameter("xh"));
//            Student stu = stuService.FindStudentByXh(xh);
//            //List<Classes> clsList = clsService.queryAllClasses();
//
//            request.setAttribute("stu", stu);
//            //request.setAttribute("clsList", clsList);
//
//            request.getRequestDispatcher("admin/updateForm.jsp").forward(request, response);
//
//        }

//        if("delete".equals(param)) {//删除
//            int xh = Integer.parseInt(request.getParameter("xh"));
//            stuService.DeleteStudent(xh);
//
//            //用户想要查看学生列表，进入主界面
//            response.sendRedirect("stuServlet?param=list");
//
//
//        }
//        if("detail".equals(param)){
//            int xh = Integer.parseInt(request.getParameter("xh"));
//            Student stu = stuService.FindStudentByXh(xh);
//            request.setAttribute("stu", stu);
//            request.getRequestDispatcher("admin/stuDetail.jsp").forward(request, response);
//        }

    }


}