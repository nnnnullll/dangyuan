package service;

import dao.ImportDao;
import entity.Member;

import java.sql.SQLException;

public class ImportService {
    ImportDao importDao=new ImportDao();
    public Member ImportMember(String cyid, String mm, String zid,
                               String zbid, String dyid, String xm, String sjh, String sfz,
                               String zb, String csrq, String jg, String sqrq, String jjrq, String fzrq,
                               String ybrq, String zsrq) {
        return  importDao.ImportMember(cyid,mm,zid,zbid,dyid,xm,sjh,sfz,zb,csrq,jg,sqrq,jjrq,fzrq,ybrq,zsrq);
    }
}
