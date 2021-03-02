package entity;

public class Groupp {
    Integer zid;
    Integer zbid;
    Integer zbsjid;
    String zm;
    String zbsjm;
    String zbm;

    public Groupp(Integer zid, String zm, String zbm) {
        this.zid = zid;
        this.zm = zm;
        this.zbm = zbm;
    }

    public Groupp(Integer zid, Integer zbid, Integer zbsjid, String zm, String zbsjm, String zbm) {
        this.zid = zid;
        this.zbid = zbid;
        this.zbsjid = zbsjid;
        this.zm = zm;
        this.zbsjm = zbsjm;
        this.zbm = zbm;
    }
    public  Groupp(Integer zid,String zm,Integer zbid,Integer zbsjid){
        this.zid = zid;
        this.zbid = zbid;
        this.zbsjid = zbsjid;
        this.zm = zm;
    }


    public String getZbm() {
        return zbm;
    }

    public void setZbm(String zbm) {
        this.zbm = zbm;
    }

    public String getZbsjm() {
        return zbsjm;
    }

    public void setZbsjm(String zbsjm) {
        this.zbsjm = zbsjm;
    }

    public Groupp(Integer zid, Integer zbid, Integer zbsjid, String zm, String zbsjm) {
        this.zid = zid;
        this.zbid = zbid;
        this.zbsjid = zbsjid;
        this.zm = zm;
        this.zbsjm = zbsjm;
    }

    @Override
    public String toString() {
        return "Groupp{" +
                "zid=" + zid +
                ", zbid=" + zbid +
                ", zbsjid=" + zbsjid +
                ", zm=" + zm +
                '}';
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
