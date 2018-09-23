package com.parts.service;

import com.parts.dao.PartDao;
import com.parts.model.Part;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PartServiceImpl implements PartService {
    @Autowired
    private PartDao partDao;

    public void addPart(Part part) {
        partDao.addPart(part);
    }

    public void updatePart(Part part) {
        partDao.updatePart(part);
    }

    public void deletePart(int id) {
        partDao.deletePart(id);
    }

    public Part getPartById(int id) {
        return partDao.getPartById(id);
    }

    public List<Part> listAllPart() {
        return partDao.listAllPart();
    }

    public List<Part> listPart(int page) {
        return partDao.listPart(page);
    }

    public String getSobrCountComp() {
        return partDao.getSobrCountComp();
    }

    public List<Part> getFind(String nameFind) {
        return partDao.getFind(nameFind);
    }

    public List<Part> sortList(int page) {
        return partDao.sortList(page);
    }
}
