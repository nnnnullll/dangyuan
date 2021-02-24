package service;

import dao.MyPartyDao;
import entity.Party;

public class PartyService {
    MyPartyDao myPartyDao=new MyPartyDao();
    public Party getPartyById(Integer zbid){
        return myPartyDao.getPartyById(zbid);
    }
    public void updateParty(Integer zbid,Integer zbsjid){
        myPartyDao.updateParty(zbid,zbsjid);
    }

}
