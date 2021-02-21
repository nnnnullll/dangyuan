package dao;

import entity.Member;
import util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ImportDao {
    public Member ImportMember(String cyid, String mm, String zid,
                               String zbid, String dyid, String xm, String sjh, String sfz,
                               String xb, String csrq, String jg, String sqrq, String jjrq, String fzrq,
                               String ybrq, String zsrq,String zt){
        String sql = "insert into member(cyid,mm,zid,zbid,dyid,xm,sjh,sfz,xb,csrq,jg,sqrq,jjrq,fzrq,ybrq,zsrq,zt) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        Member member=null;
        try {
            Integer cyid1=Integer.parseInt(cyid);
            Integer zid1=Integer.parseInt(zid);
            Integer dyid1=Integer.parseInt(dyid);
            Integer zbid1=Integer.parseInt(zbid);
            Integer zt1=Integer.parseInt(zt);

            pstmt.setInt(1,cyid1);pstmt.setString(2,mm);
            pstmt.setInt(3,zid1);pstmt.setInt(4,zbid1);
            pstmt.setInt(5,dyid1);pstmt.setString(6,xm);
            pstmt.setString(7,sjh);pstmt.setString(8,sfz);
            pstmt.setString(9,xb);pstmt.setString(10,csrq);
            pstmt.setString(11,jg);pstmt.setString(12,sqrq);
            pstmt.setString(13,jjrq);pstmt.setString(14,fzrq);
            pstmt.setString(15,ybrq);pstmt.setString(16,zsrq);
            pstmt.setInt(17,zt1);
            member=new Member(cyid1,mm,zid1,zbid1,dyid1,xm,sjh,sfz,xb,csrq,jg,sqrq,jjrq,fzrq,ybrq,zsrq,zt1);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
        return member;
    }
}
