package dao;

import util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class PhotoDao {
    public String[] getsixPhoto(Integer[] act_hdid) {
        String[] photoArr = new String[act_hdid.length];

        try {
            for (int i = 0; i < act_hdid.length; i++) {
                String sql = "select zpdz from photo where photo.hdid=1 order by RAND() limit 1";
                PreparedStatement pstmt = DBUtil.getInstance().getPreparedStatement(sql);
                ResultSet rs = pstmt.executeQuery();
                if (rs.next()) {
                    String zpdz = rs.getString("zpdz");
                    photoArr[i]=zpdz;
                }
                rs.close();
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } finally {
            DBUtil.getInstance().closeDBResources();
        }
        return photoArr;
    }
}
