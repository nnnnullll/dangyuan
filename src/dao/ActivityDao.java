package dao;

import entity.Activity;
import util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ActivityDao {
    public List<Activity> getsixActivity() {
        List<Activity> activityList = new ArrayList<Activity>();
        String sql = "select * from activity order by CAST(activity.hdsj as DATETIME) asc limit 6";
        PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
        try {
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Integer hdid= Integer.parseInt(rs.getString("hdid"));
                Integer zid= Integer.parseInt(rs.getString("zid"));
                String hdbt= rs.getString("hdbt");
                String hdsj= rs.getString("hdsj");
                String hddd= rs.getString("hddd");
                String hdnr= rs.getString("hdnr");
                Activity a = new Activity(hdid,zid,hdbt,hdsj,hddd,hdnr);
                activityList.add(a);
            }
            rs.close();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return activityList;
    }
}
