package service;

import dao.UserDao;

public class UserService {
    UserDao userDao = new UserDao();

    public Object getUserInfo(String type, Integer id) {
        Object userInfo = null;
        if ("member".equals(type)) {
            userInfo = userDao.getMemberInfo(id);
        } else if ("head".equals(type)) {
            userInfo = userDao.getHeadInfo(id);
        } else if ("admin".equals(type)) {
            userInfo = userDao.getAdminInfo(id);
        }
        return userInfo;
    }

    //    public void updateUserInfo(String type, Integer id, String xm, String xb, String tx, String csrq, String jg, String sfz, String sjh, Integer dyid, String sqrq, String jjrq, String fzrq, String ybrq, String zsrq, String sqs1, String sqs2, String zys1, String zys2) {
//        if("member".equals(type))
//            userDao.updateMemberInfo(id,xm,xb,tx,csrq,jg,sfz,sjh,dyid,sqrq,jjrq,fzrq,ybrq,zsrq,sqs1,sqs2,zys1,zys2);
//        else if("head".equals(type))
//            userDao.updateHeadInfo(id,xm,xb,tx,csrq,jg,sfz,sjh,dyid,sqrq,jjrq,fzrq,ybrq,zsrq,sqs1,sqs2,zys1,zys2);
//        else if("admin".equals(type))
//            userDao.updateAdminInfo(id,xm,xb,tx,csrq,jg,sfz,sjh,dyid,sqrq,jjrq,fzrq,ybrq,zsrq,sqs1,sqs2,zys1,zys2);
//    }

    public void changeZt(Integer zt,Integer cyid,Integer zbid){
        userDao.changeZt(zt, cyid, zbid);
    }

    public void addHead(Integer zid, Integer zzid, Integer zbid) {
        userDao.addHead(zid, zzid, zbid);
    }


    public void addMember(Integer zid, Integer cyid, Integer zbid) {
        userDao.addMember(zid, cyid, zbid);
    }
}
