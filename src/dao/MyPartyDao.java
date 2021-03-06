package dao;

import entity.Groupp;
import entity.Party;
import service.PartyService;
import service.UserService;
import util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MyPartyDao {
    public Party getPartyById(Integer zbid){
        Party party=null;
        String sql="select party.zbid,zbm,zbsjid,xm from party JOIN admin on zbsjid=glyid where party.zbid=?";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, zbid);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()) {
                zbid=rs.getInt("zbid");
                String zbm=rs.getString("zbm");
                Integer zbsjid=rs.getInt("zbsjid");
                String zbsjm=rs.getString("xm");
                party=new Party(zbid,zbm,zbsjid,zbsjm);
            }
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }

        return party;
    }
    //先在admin表中把原来的支部书记对应的支部换成0（表示已经移除）groupp表把所有组的支部书记更换 再在party表中删除原来的支部书记id，再加入新记录（含新支部书记号）
    //最后update新支部书记的支部id
    public void updateParty(Integer zbid,Integer zbsjid){
        String sql="update party set zbsjid=? where zbid=?";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(2, zbid);
            Party tmp=getPartyById(zbid);
            //把现在的支部书记对应的支部号换成0
            updateAdmin(0,tmp.getZbsjid());
            updateGroupp(zbid,zbsjid);
            pstmt.setInt(1, zbsjid);
            pstmt.executeUpdate();
            //把新任的支部书记对应支部号更换成当前的
            updateAdmin(zbid,zbsjid);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
    }

    //在admin表中把原来的支部书记对应的支部换成指定的zbid  （0表示无支部）
    public void updateAdmin(Integer zbid,Integer zbsjid){
        String sql="update admin set zbid=? where glyid=?";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, zbid);
            pstmt.setInt(2, zbsjid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
    }

    //在groupp表中把原来的支部书记换成指定的zbsjid  （0表示无支部）
    public void updateGroupp(Integer zbid,Integer zbsjid){
        String sql="update groupp set zbsjid=? where zbid=?";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, zbsjid);
            pstmt.setInt(2, zbid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
    }


}
