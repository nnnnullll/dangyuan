package dao;

import entity.Party;

public interface PartyDao {
    public abstract Party getPartyById(Integer zbid);
    public abstract void updateParty(Integer zbid,Integer zbsjid);
}
