package service;

import java.util.List;

import dao.NoteDao;
import entity.Note;

public class NoteService {
    NoteDao noteDao=new NoteDao();
    public List<Note> getNoteBydx(Integer dxx){
        return noteDao.getNoteBydx(dxx);
    }
}
