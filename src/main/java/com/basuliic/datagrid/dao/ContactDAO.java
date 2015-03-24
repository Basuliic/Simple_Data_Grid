package com.basuliic.datagrid.dao;

import com.basuliic.datagrid.model.Contact;

import java.util.List;

public interface ContactDAO {

    /**
     * Add contact to the base
     *
     * @param contact - contact to save
     */
    public void addContact(Contact contact);

    /**
     * Returns instance of contact by id
     *
     * @param id - id of demanded contact
     * @return contact
     */
    public Contact getContact(Integer id);

    /**
     * Add contact to base
     *
     * @param contact - contact to update
     */
    public void updateContact(Contact contact);

    /**
     * Returns list of all contacts
     *
     * @return list of all contacts
     */
    public List<Contact> getListOfContacts();

    /**
     * Removes contacts from the base
     *
     * @param ids - massive of ids of contacts to delete
     */
    public void removeContact(Integer... ids);
}