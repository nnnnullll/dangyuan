package entity;

public class Note {
    Integer ggid;
    String bt;
    String nr;
    String sj;
    Integer dx;
    Integer sc;

    public Integer getGgid() {
        return ggid;
    }

    public void setGgid(Integer ggid) {
        this.ggid = ggid;
    }

    public String getBt() {
        return bt;
    }

    public void setBt(String bt) {
        this.bt = bt;
    }

    public String getNr() {
        return nr;
    }

    public void setNr(String nr) {
        this.nr = nr;
    }

    public String getSj() {
        return sj;
    }

    public void setSj(String sj) {
        this.sj = sj;
    }

    public Integer getDx() {
        return dx;
    }

    public void setDx(Integer dx) {
        this.dx = dx;
    }

    public Integer getSc() {
        return sc;
    }

    public void setSc(Integer sc) {
        this.sc = sc;
    }

    @Override
    public String toString() {
        return "Note{bt=" + bt + ", dx=" + dx + ", ggid=" + ggid + ", nr=" + nr + ", sc=" + sc + ", sj=" + sj + "}";
    }

    public Note(Integer ggid, String bt, String nr, String sj, Integer dx, Integer sc) {
        this.ggid = ggid;
        this.bt = bt;
        this.nr = nr;
        this.sj = sj;
        this.dx = dx;
        this.sc = sc;
    }

    

}
