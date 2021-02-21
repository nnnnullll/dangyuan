package dao;

import entity.Admin;
import entity.Head;
import entity.Member;
import util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {

    public Object getMemberInfo(Integer id) {
        Member userInfo = null;
        String sql = "select * from member where cyid=?";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Integer cyid = rs.getInt("cyid");
                String mm = rs.getString("mm");
                Integer zid = rs.getInt("zid");
                Integer zbid = rs.getInt("zbid");
                String tx = rs.getString("tx");
                Integer dyid = rs.getInt("dyid");
                String xm = rs.getString("xm");
                String sjh = rs.getString("sjh");
                String sfz = rs.getString("sfz");
                String xb = rs.getString("xb");
                String csrq = rs.getString("csrq");
                String jg = rs.getString("jg");
                String sqrq = rs.getString("sqrq");
                String jjrq = rs.getString("jjrq");
                String fzrq = rs.getString("fzrq");
                String ybrq = rs.getString("ybrq");
                String zsrq = rs.getString("zsrq");
                Integer zt = rs.getInt("zt");
                String sqs1 = rs.getString("sqs1");
                String sqs2 = rs.getString("sqs2");
                String zys1 = rs.getString("zys1");
                String zys2 = rs.getString("zys1");

                userInfo = new Member(cyid, mm, zid, zbid, tx, dyid, xm, sjh, sfz, xb, csrq, jg, sqrq, jjrq, fzrq, ybrq, zsrq, zt, sqs1, sqs2, zys1, zys2);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return userInfo;
    }

    public Object getHeadInfo(Integer id) {
        Head userInfo = null;
        String sql = "select * from head where zzid=?";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Integer zzid = rs.getInt("zzid");
                String mm = rs.getString("mm");
                Integer zid = rs.getInt("zid");
                Integer zbid = rs.getInt("zbid");
                String tx = rs.getString("tx");
                Integer dyid = rs.getInt("dyid");
                String xm = rs.getString("xm");
                String sjh = rs.getString("sjh");
                String sfz = rs.getString("sfz");
                String xb = rs.getString("xb");
                String csrq = rs.getString("csrq");
                String jg = rs.getString("jg");
                String sqrq = rs.getString("sqrq");
                String jjrq = rs.getString("jjrq");
                String fzrq = rs.getString("fzrq");
                String ybrq = rs.getString("ybrq");
                String zsrq = rs.getString("zsrq");
                Integer zt = rs.getInt("zt");
                String sqs1 = rs.getString("sqs1");
                String sqs2 = rs.getString("sqs2");
                String zys1 = rs.getString("zys1");
                String zys2 = rs.getString("zys1");

                userInfo = new Head(zzid, mm, zid, zbid, tx, dyid, xm, sjh, sfz, xb, csrq, jg, sqrq, jjrq, fzrq, ybrq, zsrq, zt, sqs1, sqs2, zys1, zys2);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return userInfo;
    }

    public Object getAdminInfo(Integer id) {
        Admin userInfo = null;
        String sql = "select * from admin where glyid=?";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Integer glyid = rs.getInt("glyid");
                String mm = rs.getString("mm");
                Integer zbid = rs.getInt("zbid");
                String tx = rs.getString("tx");
                Integer dyid = rs.getInt("dyid");
                String xm = rs.getString("xm");
                String sjh = rs.getString("sjh");
                String sfz = rs.getString("sfz");
                String xb = rs.getString("xb");
                String csrq = rs.getString("csrq");
                String jg = rs.getString("jg");
                String sqrq = rs.getString("sqrq");
                String jjrq = rs.getString("jjrq");
                String fzrq = rs.getString("fzrq");
                String ybrq = rs.getString("ybrq");
                String zsrq = rs.getString("zsrq");
                Integer zt = rs.getInt("zt");
                String sqs1 = rs.getString("sqs1");
                String sqs2 = rs.getString("sqs2");
                String zys1 = rs.getString("zys1");
                String zys2 = rs.getString("zys1");

                userInfo = new Admin(glyid, mm, zbid, tx, dyid, xm, sjh, sfz, xb, csrq, jg, sqrq, jjrq, fzrq, ybrq, zsrq, zt, sqs1, sqs2, zys1, zys2);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return userInfo;
    }

    public void updateUserInfo(String type, Integer id, String xm, String xb, String tx, String csrq, String jg, String sfz, String sjh, Integer dyid, String sqrq, String jjrq, String fzrq, String ybrq, String zsrq, String sqs1, String sqs2, String zys1, String zys2) {
        String sql = null;
        if ("member".equals(type)) {
            sql = "update member set xm=?,xb=?,tx=?,csrq=?,jg=?,sfz=?,sjh=?,dyid=?,sqrq=?,jjrq=?,fzrq=?,ybrq=?,zsrq=?,sqs1=?,sqs2=?,zys1=?,zys2=? where cyid=?";
        } else if ("head".equals(type)) {
            sql = "update head set xm=?,xb=?,tx=?,csrq=?,jg=?,sfz=?,sjh=?,dyid=?,sqrq=?,jjrq=?,fzrq=?,ybrq=?,zsrq=?,sqs1=?,sqs2=?,zys1=?,zys2=? where zzid=?";
        } else if ("admin".equals(type)) {
            sql = "update admin set xm=?,xb=?,tx=?,csrq=?,jg=?,sfz=?,sjh=?,dyid=?,sqrq=?,jjrq=?,fzrq=?,ybrq=?,zsrq=?,sqs1=?,sqs2=?,zys1=?,zys2=? where glyid=?";
        }
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setString(1, xm);
            pstmt.setString(2, xb);
            pstmt.setString(3, tx);
            pstmt.setString(4, csrq);
            pstmt.setString(5, jg);
            pstmt.setString(6, sfz);
            pstmt.setString(7, sjh);
            pstmt.setInt(8, dyid);
            pstmt.setString(9, sqrq);
            pstmt.setString(10, jjrq);
            pstmt.setString(11, fzrq);
            pstmt.setString(12, ybrq);
            pstmt.setString(13, zsrq);
            pstmt.setString(14, sqs1);
            pstmt.setString(15, sqs2);
            pstmt.setString(16, zys1);
            pstmt.setString(17, zys2);
            pstmt.setInt(18, id);

            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
    }

    public void changePwd(String type, Integer id, String mm) {
        String sql = null;
        if ("member".equals(type)) {
            sql="update member set mm=? where cyid=?";
        } else if ("head".equals(type)) {
            sql="update head set mm=? where zzid=?";
        } else if ("admin".equals(type)) {
            sql="update admin set mm=? where glyid=?";
        }
        PreparedStatement pstmt=DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setString(1,mm);
            pstmt.setInt(2,id);

            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
    }
/*    public void updateMemberInfo(Integer id, String xm, String xb, String tx, String csrq, String jg, String sfz, String sjh, Integer dyid, String sqrq, String jjrq, String fzrq, String ybrq, String zsrq, String sqs1, String sqs2, String zys1, String zys2) {
        String sql="update member set xm=?,xb=?,tx=?,csrq=?,jg=?,sfz=?,sjh=?,dyid=?,sqrq=?,jjrq=?,fzrq=?,ybrq=?,zsrq=?,sqs1=?,sqs2=?,zys1=?,zys2=? where cyid=?";
        PreparedStatement pstmt=DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setString(1,xm);
            pstmt.setString(2,xb);
            pstmt.setString(3,tx);
            pstmt.setString(4,csrq);
            pstmt.setString(5,jg);
            pstmt.setString(6,sfz);
            pstmt.setString(7,sjh);
            pstmt.setInt(8,dyid);
            pstmt.setString(9,sqrq);
            pstmt.setString(10,jjrq);
            pstmt.setString(11,fzrq);
            pstmt.setString(12,ybrq);
            pstmt.setString(13,zsrq);
            pstmt.setString(14,sqs1);
            pstmt.setString(15,sqs2);
            pstmt.setString(16,zys1);
            pstmt.setString(17,zys2);
            pstmt.setInt(18,id);

            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
    }

    public void updateHeadInfo(Integer id, String xm, String xb, String tx, String csrq, String jg, String sfz, String sjh, Integer dyid, String sqrq, String jjrq, String fzrq, String ybrq, String zsrq, String sqs1, String sqs2, String zys1, String zys2) {
    }

    public void updateAdminInfo(Integer id, String xm, String xb, String tx, String csrq, String jg, String sfz, String sjh, Integer dyid, String sqrq, String jjrq, String fzrq, String ybrq, String zsrq, String sqs1, String sqs2, String zys1, String zys2) {
    }*/
}
