package com.basuliic.datagrid.service;

import com.basuliic.datagrid.model.Contact;

import java.util.List;

public interface ContactService {

    public void addContact(Contact contact);

    public List<Contact> listContact();

    public void removeContact(Integer id);
}