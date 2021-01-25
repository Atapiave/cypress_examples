import { Given, When, Then } from "cypress-cucumber-preprocessor/steps"
import ActionsPage from '../../pages/actions.pages'

Given('we are in the Distillery main page', () => {
    cy.visit("https://distillery.com/")
});

When('we hover over the {string} menu', (menu_name) => {
    ActionsPage.hover_element_from_list('.navigation-menu__item-link', menu_name)
});

When('we select the {string} menu', (menu_name) => {
    ActionsPage.click_element_from_list('.navigation-menu__item-link', menu_name)
});

When('we select the {string} option', (option_name) => {
    ActionsPage.click_element_from_list('div:nth-of-type(1) > .nav-content.navigation-menu__item-content  .nav-content__subcategory-wrap > a ', option_name)
});

Then('we verify we are in {string} page', (page_title) => {
    ActionsPage.assert_contains('.jumbotron__main-heading.styleguide-typography__main-heading', page_title)
});

Then('we scroll to {string} point', (point) => {
    ActionsPage.scroll_to_element('.expertise-detail__title.styleguide-typography__subtitle', point)
});

When('we fill the fields on contact page with the next information', (datatable) => {
    datatable.hashes().forEach(element => {
        ActionsPage.type_text('input#name_contact_page', element.name)
        ActionsPage.type_text('input#email_contact_page', element.email)
        ActionsPage.type_text('input#phone_contact_page', element.phone)
        ActionsPage.type_text('#message_contact_page', element.info)
        if (element.updates == 'Y') {
            ActionsPage.click_element('.main-form-component__form-wrapper_contact .styleguide-checkbox__wrapper:nth-of-type(3) .styleguide-checkbox__checkbox')
        }
        if (element.policy == 'Y') {
            ActionsPage.click_element('.main-form-component__form-wrapper_contact .styleguide-checkbox__wrapper:nth-of-type(4) .styleguide-checkbox__checkbox')
        }
    })
});

When('we click on submit button', ()  => {
    ActionsPage.click_element_force('.main-form-component__form-wrapper_contact .main-form-component__form-button')
});

Then('we assert that the message was sent', () => {
    ActionsPage.assert_contains('.contact__coll_form .main-form-component__successful-title', 'Your message was sent!')
});

Then('we execute the next query line', (query) => {
    ActionsPage.execute_query(query)
})

Then('we insert into table {string}', (table, datatable) => {
    ActionsPage.insert_to_table(table, datatable)
})