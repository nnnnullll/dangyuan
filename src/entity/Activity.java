package entity;

public class Activity {
    private Integer hdid;
    private Integer zid;
    private String hdbt;
    private String hsdj;
    private String hddd;
    private String hdnr;

    public Activity(Integer hdid, Integer zid, String hdbt, String hsdj, String hddd, String hdnr) {
        this.hdid = hdid;
        this.zid = zid;
        this.hdbt = hdbt;
        this.hsdj = hsdj;
        this.hddd = hddd;
        this.hdnr = hdnr;
    }

    public Integer getHdid() {
        return hdid;
    }

    public Integer getZid() {
        return zid;
    }

    public String getHdbt() {
        return hdbt;
    }

    public String getHsdj() {
        return hsdj;
    }

    public String getHddd() {
        return hddd;
    }

    public String getHdnr() {
        return hdnr;
    }

    public void setHdid(Integer hdid) {
        this.hdid = hdid;
    }

    public void setZid(Integer zid) {
        this.zid = zid;
    }

    public void setHdbt(String hdbt) {
        this.hdbt = hdbt;
    }

    public void setHsdj(String hsdj) {
        this.hsdj = hsdj;
    }

    public void setHddd(String hddd) {
        this.hddd = hddd;
    }

    public void setHdnr(String hdnr) {
        this.hdnr = hdnr;
    }
}
