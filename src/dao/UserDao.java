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

    public Object getHeadInfo(Integer id) {
        Head userInfo =null;

        return userInfo;
    }

    public Object getAdminInfo(Integer id) {
        Admin userInfo=null;

        return userInfo;
    }
}
