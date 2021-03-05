package service;

import java.util.List;

import dao.NoteDao;
import entity.Note;

public class NoteService {
    NoteDao noteDao=new NoteDao();
    public List<Note> getNoteBydx(Integer dxx){
        return noteDao.getNoteBydx(dxx);
    }
    public void addNote(String bt,String nr,String sj,Integer dx){
        noteDao.addNote(bt, nr, sj, dx);
    }

    public void deleteNote(Integer ggid){
        noteDao.deleteNote(ggid);
    }
    public List<Note> getAllByType(String type){
        if("member".equals(type)){
            return noteDao.getMemberNote();
        }else if("controller".equals(type)){
            return noteDao.getControllerNote();
        }
        else{
            return noteDao.getAllNote();
        }
    }

}
