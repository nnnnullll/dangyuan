package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Note;
import util.DBUtil;

public class NoteDao {
     //根据对象返回公告列表
     public List<Note> getNoteBydx(Integer dxx) {
        List<Note> notelist=new ArrayList<Note>();
        String sql = "select * from note where ggid=? order by sj desc";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, dxx);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()) {
                Integer ggid=rs.getInt("ggid");
                String bt=rs.getString("bt");
                String nr=rs.getString("nr");
                String sj=rs.getString("sj");
                Integer dx=rs.getInt("dx"); 
                Integer sc=rs.getInt("sc");
                Note n=new Note(ggid,bt,nr,sj,dx,sc);
                notelist.add(n);
            }
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
        return notelist;
    }
}
