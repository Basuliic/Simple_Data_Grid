package com.basuliic.datagrid.dao;

import com.basuliic.datagrid.model.Contact;

import java.util.List;

public interface ContactDAO {

    public void addContact(Contact contact);

    public Contact getContact(Integer id);

    public void updateContact(Contact contact);

    public List<Contact> getListOfContacts();

    public void removeContact(Integer... ids);
}