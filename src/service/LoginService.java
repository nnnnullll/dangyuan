package service;

import dao.UserDao;
import entity.Member;

public class LoginService {
    UserDao memberdao=new UserDao();

    public Member checkMenmer(Integer id,String pwd){
        Member member=(Member) memberdao.getMemberInfo(id);
        return member;
    }
}
