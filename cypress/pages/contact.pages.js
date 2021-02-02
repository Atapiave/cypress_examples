import ContactPageLocator from '../locators/contact.locators.js';
import ActionsPage from "./actions.pages"

const actions = new ActionsPage()
const contact_page_locator = new ContactPageLocator()

class ContactPage {
    insert_contact_information(datatable) {
        datatable.hashes().forEach(element => {
            actions.type_text(contact_page_locator.name(), element.name)
            if (element.email == 'random_email') {
                actions.type_text(contact_page_locator.email(), this.generate_mail(15) + '+test@distillery.com')
            }
            else {
                actions.type_text(contact_page_locator.email(), element.email)
            }
            actions.type_text(contact_page_locator.phone(), element.phone)
            actions.type_text(contact_page_locator.info(), element.info)
            if (element.updates == 'Y') {
                actions.click_element(contact_page_locator.updates())
            }
            if (element.policy == 'Y') {
                actions.click_element(contact_page_locator.policy())
            }
        })
    }

    click_submit() {
        actions.click_element(contact_page_locator.submit_button())
    }

    generate_mail(length) {
        var result = '';
        var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        var charactersLength = characters.length;
        for (var i = 0; i < length; i++) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }
        return result;
    }
}

export default ContactPage;