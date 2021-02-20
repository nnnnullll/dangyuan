package dao;

import entity.Groupp;


public interface GroupDao {
    //根据id查询党小组对象
    public abstract Groupp getGroupById(Integer zid);
    public abstract void updateInfo(String zm,Integer zid);
}
