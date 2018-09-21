package com.parts.dao;

import com.parts.model.Part;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PartDaoImpl implements PartDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void addPart(Part part) {
        Session session = sessionFactory.getCurrentSession();
        session.save(part);
    }

    public void updatePart(Part part) {
        Session session = sessionFactory.getCurrentSession();
        session.update(part);
    }

    public void deletePart(int id) {
        Session session = sessionFactory.getCurrentSession();
        Part part = session.load(Part.class, id);
        if (part != null)
            session.delete(part);
    }

    public Part getPartById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Part part = session.get(Part.class, id);
        return part;
    }

    public List<Part> listAllPart() {
        Session session = sessionFactory.getCurrentSession();
        List<Part> partList = session.createQuery("from Part").list();
        return partList;
    }

    public List<Part> listPart(int page) {
        Session session = sessionFactory.getCurrentSession();
        page = (Integer.parseInt(page - 1 + "0"));
        List<Part> partList = session.createQuery("from Part").setFirstResult(page).setMaxResults(10).list();
        return partList;
    }

    public String getSobrCountComp() {
        Session session = sessionFactory.getCurrentSession();
        String cur = session.createQuery("SELECT MIN(amount) from Part WHERE necessity = 1").list().get(0).toString();
        return cur;
    }

    public List<Part> getFind(String nameFind) {
        Session session = sessionFactory.getCurrentSession();
        List<Part> findList = session.createQuery("from Part WHERE name like '%" + nameFind + "%'").list();
        return findList;
    }
}
