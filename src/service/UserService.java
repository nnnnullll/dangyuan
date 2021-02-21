package service;

import dao.UserDao;
import entity.Member;

public class UserService {
    UserDao userDao=new UserDao();
    public Object getUserInfo(String type, Integer id) {
        Object userInfo=null;
        if("member".equals(type))
            userInfo= userDao.getMemberInfo(id);
        else if("head".equals(type))
            userInfo=userDao.getHeadInfo(id);
        else if("admin".equals(type))
            userInfo=userDao.getAdminInfo(id);
        return userInfo;
    }
}
