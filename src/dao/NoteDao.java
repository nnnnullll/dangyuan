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
        List<Note> notelist = new ArrayList<Note>();
        String sql = "select * from note where dx=? order by sj desc";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, dxx);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Integer ggid = rs.getInt("ggid");
                String bt = rs.getString("bt");
                String nr = rs.getString("nr");
                String sj = rs.getString("sj");
                Integer dx = rs.getInt("dx");
                Integer sc = rs.getInt("sc");
                Note n = new Note(ggid, bt, nr, sj, dx, sc);
                notelist.add(n);
            }
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return notelist;
    }

    //添加公告
    public void addNote(String bt, String nr, String sj, Integer dx) {
        String sql = "insert into note(bt,nr,sj,dx,sc) values(?,?,?,?,0)";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setString(1, bt);
            pstmt.setString(2, nr);
            pstmt.setString(3, sj);
            pstmt.setInt(4, dx);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
    }

    //删除公告
    public void deleteNote(Integer ggid) {
        String sql = "update note set sc=1 where ggid=?";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, ggid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
    }
    public List<Note> getControllerNote() {
        List<Note> notelist = new ArrayList<Note>();
        String sql = "select * from note where dx=0 and sc!=1";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Integer ggid = rs.getInt("ggid");
                String bt = rs.getString("bt");
                String nr = rs.getString("nr");
                String sj = rs.getString("sj");
                Integer dx = rs.getInt("dx");
                Integer sc = rs.getInt("sc");
                Note n = new Note(ggid, bt, nr, sj, dx, sc);
                notelist.add(n);
            }
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return notelist;
    }

    public List<Note> getMemberNote() {
        List<Note> notelist = new ArrayList<Note>();
        String sql = "select * from note where dx=1 and sc!=1";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Integer ggid = rs.getInt("ggid");
                String bt = rs.getString("bt");
                String nr = rs.getString("nr");
                String sj = rs.getString("sj");
                Integer dx = rs.getInt("dx");
                Integer sc = rs.getInt("sc");
                Note n = new Note(ggid, bt, nr, sj, dx, sc);
                notelist.add(n);
            }
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return notelist;
    }

    public List<Note> getAllNote() {
        List<Note> notelist = new ArrayList<Note>();
        String sql = "select * from note where sc!=1";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Integer ggid = rs.getInt("ggid");
                String bt = rs.getString("bt");
                String nr = rs.getString("nr");
                String sj = rs.getString("sj");
                Integer dx = rs.getInt("dx");
                Integer sc = rs.getInt("sc");
                Note n = new Note(ggid, bt, nr, sj, dx, sc);
                notelist.add(n);
            }
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return notelist;
    }


}
