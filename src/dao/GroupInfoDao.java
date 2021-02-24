package dao;

import entity.GroupInfo;
import entity.Groupp;
import util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GroupInfoDao {
    public List<GroupInfo> getGroupInfoByZbsjid(Integer zbsjid){
        List<GroupInfo> grouppInfoList=new ArrayList<GroupInfo>();
        String sql="select h.zid zid,h.zm,head.xm headxm from head,(select zid,zm from groupp where zbsjid=?) h where head.zid=h.zid ";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, zbsjid);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Integer zid=rs.getInt("zid");
                String zm=rs.getString("zm");
                String headxm=rs.getString("headxm");

                GroupInfo g=new GroupInfo(zid,zm,headxm);
                grouppInfoList.add(g);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
        return grouppInfoList;
    }

    public GroupInfo getGroupInfoByZid(Integer zid){
        GroupInfo groupInfo=null;
        String sql="select h.zid zid,h.zm,head.xm headxm from head,(select zid,zm from groupp where zid=?) h where head.zid=h.zid ";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, zid);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Integer zzid=rs.getInt("zid");
                String zm=rs.getString("zm");
                String headxm=rs.getString("headxm");

                GroupInfo g=new GroupInfo(zzid,zm,headxm);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
        return groupInfo;
    }


}
