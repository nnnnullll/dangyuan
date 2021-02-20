package entity;

public class Party {
    Integer zbid;
    String zbm;
    Integer zbsjid;
    String zbsjm;

    public Integer getZbid() {
        return zbid;
    }

    public void setZbid(Integer zbid) {
        this.zbid = zbid;
    }

    public String getZbm() {
        return zbm;
    }

    public void setZbm(String zbm) {
        this.zbm = zbm;
    }

    public Integer getZbsjid() {
        return zbsjid;
    }

    public void setZbsjid(Integer zbsjid) {
        this.zbsjid = zbsjid;
    }

    public String getZbsjm() {
        return zbsjm;
    }

    public void setZbsjm(String zbsjm) {
        this.zbsjm = zbsjm;
    }

    public Party(Integer zbid, String zbm, Integer zbsjid, String zbsjm) {
        this.zbid = zbid;
        this.zbm = zbm;
        this.zbsjid = zbsjid;
        this.zbsjm = zbsjm;
    }
}
