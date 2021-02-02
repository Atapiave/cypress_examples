class ContactPageLocator {
    name() {
        return 'input#name_contact_page'
    }

    email() {
        return 'input#email_contact_page'
    }

    phone() {
        return 'input#phone_contact_page'
    }

    info() {
        return '#message_contact_page'
    }

    updates() {
        return '.main-form-component__form-wrapper_contact .styleguide-checkbox__wrapper:nth-of-type(3) .styleguide-checkbox__checkbox'
    }

    policy() {
        return '.main-form-component__form-wrapper_contact .styleguide-checkbox__wrapper:nth-of-type(4) .styleguide-checkbox__checkbox'
    }

    submit_button() {
        return '.main-form-component__form-wrapper_contact .main-form-component__form-button'
    }

    message_sent() {
        return '.contact__coll_form .main-form-component__successful-title'
    }
}

export default ContactPageLocator;