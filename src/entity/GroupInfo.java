package entity;

public class GroupInfo {
    private Integer zid;
    private String zm;
    private String headxm;

    public GroupInfo(Integer zid, String zm, String headxm) {
        this.zid = zid;
        this.zm = zm;
        this.headxm = headxm;
    }

    public Integer getZid() {
        return zid;
    }

    public String getZm() {
        return zm;
    }

    public String getHeadxm() {
        return headxm;
    }

    public void setZid(Integer zid) {
        this.zid = zid;
    }

    public void setZm(String zm) {
        this.zm = zm;
    }

    public void setHeadxm(String headxm) {
        this.headxm = headxm;
    }
}
