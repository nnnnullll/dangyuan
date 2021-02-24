package entity;

import java.util.List;

public class GroupAll {
     private GroupInfo groupInfo;
     private Head head;
     private List<Member> memberList;

    public GroupAll(GroupInfo groupInfo, Head head, List<Member> memberList) {
        this.groupInfo = groupInfo;
        this.head = head;
        this.memberList = memberList;
    }

    public GroupInfo getGroupInfo() {
        return groupInfo;
    }

    public Head getHead() {
        return head;
    }

    public List<Member> getMemberList() {
        return memberList;
    }

    public void setGroupInfo(GroupInfo groupInfo) {
        this.groupInfo = groupInfo;
    }

    public void setHead(Head head) {
        this.head = head;
    }

    public void setMemberList(List<Member> memberList) {
        this.memberList = memberList;
    }
}
