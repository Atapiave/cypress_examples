import { When, Then } from "cypress-cucumber-preprocessor/steps"
import Asserts from '../../utilities/asserts.js'
import ContactPage from '../../pages/contact.pages.js'
import ContactPageLocator from '../../locators/contact.locators.js'

const asserts = new Asserts()
const contact_page = new ContactPage()
const contact_page_locator = new ContactPageLocator()

When('we fill the fields on contact page with the next information', (datatable) => {
    contact_page.insert_contact_information(datatable)
});

When('we click on submit button', ()  => {
    contact_page.click_submit()
});

Then('we assert that the message was sent', () => {
    asserts.assert_contains(contact_page_locator.message_sent(), 'Your message was sent!')
});