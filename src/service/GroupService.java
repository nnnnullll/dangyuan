package service;

import dao.MyGroupDao;
import entity.Groupp;

import java.util.List;

public class GroupService {
    MyGroupDao myGroupDao=new MyGroupDao();
    public Groupp getGroupById(Integer id){
        return myGroupDao.getGroupById(id);
    }
    public void updateInfo(String zm,Integer zid){
        myGroupDao.updateInfo(zm,zid);
    }
}
