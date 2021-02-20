package entity;

public class Groupp {
    Integer zid;
    Integer zbid;
    Integer zbsjid;
    String zm;

    @Override
    public String toString() {
        return "Groupp{" +
                "zid=" + zid +
                ", zbid=" + zbid +
                ", zbsjid=" + zbsjid +
                ", zm=" + zm +
                '}';
    }

    public Groupp(Integer zid, Integer zbid, Integer zbsjid, String zm) {
        this.zid = zid;
        this.zbid = zbid;
        this.zbsjid = zbsjid;
        this.zm = zm;
    }

    public Integer getZid() {
        return zid;
    }

    public void setZid(Integer zid) {
        this.zid = zid;
    }

    public Integer getZbid() {
        return zbid;
    }

    public void setZbid(Integer zbid) {
        this.zbid = zbid;
    }

    public Integer getZbsjid() {
        return zbsjid;
    }

    public void setZbsjid(Integer zbsjid) {
        this.zbsjid = zbsjid;
    }

    public String getZm() {
        return zm;
    }

    public void setZm(String zm) {
        this.zm = zm;
    }
}
