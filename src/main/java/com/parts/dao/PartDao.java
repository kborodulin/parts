package com.parts.dao;

import com.parts.model.Part;

import java.util.List;

public interface PartDao {
    void addPart(Part part);

    void updatePart(Part part);

    void deletePart(int id);

    Part getPartById(int id);

    List<Part> listAllPart();

    List<Part> listPart(int page);

    String getSobrCountComp();

    List<Part> getFind(String nameFind);

    List<Part> sortList(int page);
}
