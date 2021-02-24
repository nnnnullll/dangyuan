package service;

import dao.ActivityDao;
import dao.PhotoDao;
import dao.UserDao;
import entity.Activity;
import entity.Member;

import java.util.List;

public class LoginService {
    PhotoDao photodao=new PhotoDao();
    ActivityDao activitydao=new ActivityDao();
    UserDao memberdao = new UserDao();


    public Member checkMember(Integer id, String pwd) {
        Member member = null;
        member = (Member)this.memberdao.getMemberInfo(id);
        return member;
    }
    public List<Activity> getsixActivity(){
        return activitydao.getsixActivity();
    }
    public String[] getsixPhoto(Integer[] act_hdid){
        return photodao.getsixPhoto(act_hdid);
    }
}
