package servlet;

import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/photoServlet")
public class PhotoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String param=req.getParameter("param");
        String type= (String) req.getSession().getAttribute("type");
        Integer id= (Integer) req.getSession().getAttribute("id");
        Integer zbid= (Integer) req.getSession().getAttribute("zbid");
        UserService userService=new UserService();
        if("tx".equals(param)){
            //创建smartupload组件
            SmartUpload su = new SmartUpload();
            //初始化SmartUpload
            su.initialize(getServletConfig(), req, resp);
            try {
                su.upload();
            } catch (SmartUploadException e) {
                e.printStackTrace();
            }
            req.setCharacterEncoding("utf-8");
//             System.out.println(req.getServletContext().getRealPath("/photos"));
            String photosPath = req.getServletContext().getRealPath("/photos");
            File file =su.getFiles().getFile(0);
            String photoName = new StringBuilder(param.hashCode()).append(System.currentTimeMillis()).toString();
            try {
                file.saveAs(photosPath+"\\"+photoName+".jpg");
            } catch (SmartUploadException e) {
                e.printStackTrace();
            }
            userService.changeTx(zbid,id,photoName);
            req.getSession().setAttribute("tx",photoName);
            resp.sendRedirect("userServlet?param=goModify");
        }else if("zys".equals(param)){
            //创建smartupload组件
            SmartUpload su = new SmartUpload();
            //初始化SmartUpload
            su.initialize(getServletConfig(), req, resp);
            try {
                su.upload();
            } catch (SmartUploadException e) {
                e.printStackTrace();
            }
            req.setCharacterEncoding("utf-8");
            List<String> photo = new ArrayList<>();
            for(int i=0;i<2;i++){
                String name=  new StringBuilder(param.hashCode()).append(id).toString();;
//                System.out.println(req.getServletContext().getRealPath("/photos"));
                String photosPath = req.getServletContext().getRealPath("/photos");
                File file =su.getFiles().getFile(0);
                String photoName = new StringBuilder(name.hashCode()).append(System.currentTimeMillis()).toString();
                photo.add(photoName);
                try {
                    file.saveAs(photosPath+"\\"+photoName+".jpg");
                } catch (SmartUploadException e) {
                    e.printStackTrace();
                }
            }
           userService.changeZys(zbid,id,photo);
            resp.sendRedirect("userServlet?param=info");
        }
    }
}
