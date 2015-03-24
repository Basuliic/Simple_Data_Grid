package com.basuliic.datagrid.service;

import com.basuliic.datagrid.model.Contact;
import org.hibernate.metamodel.ValidationException;

import java.util.List;

public interface ContactService {

    /**
     * Add contact to the base
     *
     * @param contact - contact to save
     * @throws ValidationException if field requirements is not met
     */
    public void addContact(Contact contact) throws ValidationException;

    /**
     * Returns instance of contact by id
     * @param id - id of demanded contact
     * @return contact
     */
    public Contact getContact(Integer id);

    /**
     * Add contact to base
     *
     * @param contact - contact to update
     * @throws ValidationException if field requirements is not met
     */
    public void updateContact(Contact contact) throws ValidationException;

    /**
     * Returns list of all contacts
     * @return list of all contacts
     */
    public List<Contact> getListOfContacts();

    /**
     * Removes contacts from the base
     * @param ids - massive of ids of contacts to delete
     */
    public void removeContact(Integer... ids);
}