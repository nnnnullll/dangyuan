package servlet;

import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import entity.Member;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import service.ImportService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@WebServlet("/ImportServlet")
public class ImportServlet extends HttpServlet {
    ImportService importService=new ImportService();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SmartUpload su = new SmartUpload();
        //初始化SmartUpload
        su.initialize(getServletConfig(), req, resp);
        try {
            su.upload();
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
        List<Member> memberList = null;

        File file=su.getFiles().getFile(0);
        String filePath = getServletContext().getRealPath("/Excel");
        String fileName = new StringBuilder(new String("Excel").hashCode()).append(System.currentTimeMillis()).toString();
        try {
            file.saveAs(filePath+"\\"+fileName+".jpg");
        } catch (SmartUploadException smartUploadException) {
            smartUploadException.printStackTrace();
        }
        int sheetNum=0;
        java.io.File sourcefile = new java.io.File(filePath+"\\"+fileName+".xls");
        InputStream is = new FileInputStream(sourcefile);
        Workbook workbook = null;
        try {
            workbook = Workbook.getWorkbook(is);
        } catch (BiffException biffException) {
            biffException.printStackTrace();
        }
        Sheet sheet = workbook.getSheet(0);
        // 行数
        int rows = sheet.getRows();
        // 列数
        int columns = sheet.getColumns();

        for (int i = 0; i < rows; i++) {
            if (i == 0) {// 第一行是属性，不读取
                continue;
            }
            Cell ce0 = ((jxl.Sheet) sheet).getCell(0, i);Cell ce1 = ((jxl.Sheet) sheet).getCell(1, i);
            Cell ce2 = ((jxl.Sheet) sheet).getCell(2, i);Cell ce3 = ((jxl.Sheet) sheet).getCell(3, i);
            Cell ce4 = ((jxl.Sheet) sheet).getCell(4, i);Cell ce5 = ((jxl.Sheet) sheet).getCell(5, i);
            Cell ce6 = ((jxl.Sheet) sheet).getCell(6, i);Cell ce7 = ((jxl.Sheet) sheet).getCell(7, i);
            Cell ce8 = ((jxl.Sheet) sheet).getCell(8, i);Cell ce9 = ((jxl.Sheet) sheet).getCell(9, i);
            Cell ce10 = ((jxl.Sheet) sheet).getCell(10, i);Cell ce11 = ((jxl.Sheet) sheet).getCell(11, i);
            Cell ce12 = ((jxl.Sheet) sheet).getCell(12, i);Cell ce13 = ((jxl.Sheet) sheet).getCell(13, i);
            Cell ce14 = ((jxl.Sheet) sheet).getCell(14, i);Cell ce15 = ((jxl.Sheet) sheet).getCell(15, i);
            Cell ce16 = ((jxl.Sheet) sheet).getCell(16, i);

            String c0 = ce0.getContents();String c1 = ce1.getContents();
            String c2 = ce2.getContents();String c3 = ce3.getContents();
            String c4 = ce4.getContents();String c5 = ce5.getContents();
            String c6 = ce6.getContents();String c7 = ce7.getContents();
            String c8 = ce8.getContents();String c9 = ce9.getContents();
            String c10 = ce10.getContents();String c11 = ce11.getContents();
            String c12 = ce12.getContents();String c13 = ce13.getContents();
            String c14 = ce14.getContents();String c15 = ce15.getContents();
            String c16=ce16.getContents();
            //Member member=
            importService.ImportMember(c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16);
            //memberList.add(member);
        }
    }
}



