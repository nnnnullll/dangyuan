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
        String sql="select * from member where cyid=?";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1,id);
            ResultSet rs= pstmt.executeQuery();
            if(rs.next()){

//                userInfo=new Member(cyid,mm,zid,zbid,tx,dyid,xm,sjh,sfz,xb,csrq,jg,sqrq,jjrq,fzrq,ybrq,zsrq,zt,sqs1,sqs2,zys1,zys2);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
        return userInfo;
    }

    public Integer getSomeHeadInfo(Integer id) {
        Head userInfo =null;
        String sql="select * from head where zid=?";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1,id);
            ResultSet rs= pstmt.executeQuery();
            if(rs.next()){
                Integer zzid=rs.getInt("zzid");
                return zzid;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
        return 999;
    }

    public void addHead(Integer zid,Integer zzid,Integer zbid){
        //任命组长:把指定组长的zid换成指定的zid 把该组的当前组长的zid换成0
        String sql="update `head` set zid=? where zbid=? and zzid=?";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, zid);
            pstmt.setInt(2, zbid);
            pstmt.setInt(3, zzid);
            //获取指定小组的当前的组长号
            Integer zzidnow=getSomeHeadInfo(zid);
            //这里需要将原来的组长的zid改成0，表示已经不是组长了
            updateHead(0,zzidnow);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
    }

    //在head表中把原来的组长对应的zid换成指定的zid  （0表示已经移除）
    public void updateHead(Integer zid,Integer zzid){
        String sql="update head set zid=? where zzid=?";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, zid);
            pstmt.setInt(2, zzid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
    }


    public Object getAdminInfo(Integer id) {
        Admin userInfo=null;

        return userInfo;
    }

    public Object getHeadInfo(Integer id) {
        Head userInfo=null;

        return userInfo;
    }

    public void setHeadByZid(Integer zid,Integer zzid){
        String sql="update `head` set zid=? where zzid=?";
        PreparedStatement pstmt= DBUtil.getInstance().getPreparedStatement(sql);
        try {
            pstmt.setInt(1, zid);
            pstmt.setInt(2, zzid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            DBUtil.getInstance().closeDBResources();
        }
    }
}
