package com.basuliic.datagrid.validation;

import com.basuliic.datagrid.model.Contact;

/**
 * Class for validation of Contact classs
 */
public class ContactValidator {
    /**
     * @param contact
     * @return true, if contact is valid, false in other cases
     */
    public static boolean check(Contact contact) {
        if (contact == null)
            return false;
        return checkName(contact.getFirstname()) &&
                checkName(contact.getLastname()) &&
                checkEmail(contact.getEmail()) &&
                checkTelephone(contact.getTelephone());
    }

    private static boolean checkName(String name) {
        return name.matches("^[a-zA-Z]{4,30}$");
    }

    private static boolean checkEmail(String name) {
        return name.matches("^[\\w\\+]+(\\.\\w-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
    }

    private static boolean checkTelephone(long tel) {
        return ("" + tel).matches("^\\d{6,15}$");
    }
}
