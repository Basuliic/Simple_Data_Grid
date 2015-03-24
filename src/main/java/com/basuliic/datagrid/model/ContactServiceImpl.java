package com.basuliic.datagrid.model;

import com.basuliic.datagrid.dao.ContactDAO;
import com.basuliic.datagrid.service.ContactService;
import com.basuliic.datagrid.validation.ContactValidator;
import org.hibernate.metamodel.ValidationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ContactServiceImpl implements ContactService {

    @Autowired
    private ContactDAO contactDAO;

    @Transactional
    public Contact getContact(Integer id) {
        return contactDAO.getContact(id);
    }

    @Transactional
    public void addContact(Contact contact) throws ValidationException {
        if (ContactValidator.check(contact)) {
            contactDAO.addContact(contact);
        } else throw new ValidationException("bad contact");
    }

    @Transactional
    public void updateContact(Contact contact) throws ValidationException {
        if (ContactValidator.check(contact)) {
            contactDAO.updateContact(contact);
        } else throw new ValidationException("bad contact");
    }

    @Transactional
    public List<Contact> getListOfContacts() {

        return contactDAO.getListOfContacts();
    }

    @Transactional
    public void removeContact(Integer... ids) {
        contactDAO.removeContact(ids);
    }
}