package service;

import dao.GroupInfoDao;
import dao.UserDao;
import entity.*;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    UserDao userDao = new UserDao();
    GroupInfoDao groupinfodao=new GroupInfoDao();

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
    public void updateUserInfo(String type, Integer id, String xm, String xb, String tx, String csrq, String jg, String sfz, String sjh, Integer dyid, String sqrq, String jjrq, String fzrq, String ybrq, String zsrq, String sqs1, String sqs2, String zys1, String zys2) {
        userDao.updateUserInfo(type, id, xm, xb, tx, csrq, jg, sfz, sjh, dyid, sqrq, jjrq, fzrq, ybrq, zsrq, sqs1, sqs2, zys1, zys2);
    }

    public void changePwd(String type, Integer id, String mm) {
        userDao.changePwd(type,id,mm);
    }

    public void resetPwd(String type, Integer id, Integer mm) {
        userDao.resetPwd(type,id,mm);
    }

    public void changeZt(Integer zt,Integer cyid,Integer zbid){
        userDao.changeZt(zt, cyid, zbid);
    }

    public void addHead(Integer zid, Integer zzid, Integer zbid) {
        userDao.addHead(zid, zzid, zbid);
    }


    public void addMember(Integer zid, Integer cyid, Integer zbid) {
        userDao.addMember(zid, cyid, zbid);
    }

    public String[] getGroupByZid(Integer zid){
        return userDao.getGroupByZid(zid);
    }
    public Head getGroupHead(Integer zid){
        return userDao.getGroupHead(zid);
    }
    public List<Member> getMemberByZid(Integer zid){
        return userDao.getMemberByZid(zid);
    }

    public List<GroupAll> getGroupAllByZbsjid(Integer zbsjid){
        List<GroupAll> groupAllList=new ArrayList<GroupAll>();
        List<GroupInfo> groupInfoList=groupinfodao.getGroupInfoByZbsjid(zbsjid);
        Head head=null;
        List<Member> memberList=null;
        if(groupInfoList!=null){
            for(int i=0;i<groupInfoList.size();i++){
                head=userDao.getGroupHead(groupInfoList.get(i).getZid());
                memberList=userDao.getMemberByZid(groupInfoList.get(i).getZid());
                GroupAll g=new GroupAll(groupInfoList.get(i),head,memberList);
                groupAllList.add(g);
            }
        }else {
            groupAllList=null;
        }
        return groupAllList;
    }


}
