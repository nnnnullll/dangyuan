package servlet;

import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/photoServlet")
public class PhotoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param=req.getParameter("param");
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
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
            String name="ymj";
             System.out.println(req.getServletContext().getRealPath("/photos"));
            String photosPath = req.getServletContext().getRealPath("/photos");
            File file =su.getFiles().getFile(0);
            String photoName = new StringBuilder(name.hashCode()).append(System.currentTimeMillis()).toString();
            try {
                file.saveAs(photosPath+"\\"+photoName+".jpg");
            } catch (SmartUploadException e) {
                e.printStackTrace();
            }
        }
    }
}
