package dao;

import entity.Groupp;
import util.DBUtil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException; 

public class MyGroupDao{
    //根据id查询党小组信息
    public Groupp getGroupById(Integer id) {
        Groupp groupp = null;
        String sql = "select zid,zm,groupp.zbsjid,xm,groupp.zbid,zbm from groupp,admin,party where groupp.zbsjid=admin.glyid and groupp.zbid=party.zbid and zid=?";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()) {
                Integer zid=rs.getInt("zid");
                String zm=rs.getString("zm");
                Integer zbsjid=rs.getInt("zbsjid");
                Integer zbid=rs.getInt("zbid");
                String zbsjm=rs.getString("xm");
                String zbm=rs.getString("zbm");
                groupp=new Groupp(zid,zbid,zbsjid,zm,zbsjm,zbm);
            }
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
        return groupp;
    }
    //修改
    public void updateInfo(String zm,Integer zid){
        String sql="update groupp set zm=? where zid=?";
        PreparedStatement pstmt=DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setString(1, zm);
            pstmt.setInt(2, zid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
    }
    //增加成员入组->找到该成员然后把他的组号改成当前组号

    //删除组员出组->找到该成员修改组号为x或0
}
