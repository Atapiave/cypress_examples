import { Given, When, Then } from "cypress-cucumber-preprocessor/steps"
import ActionsPage from '../../pages/actions.pages'

Given('we are in the google main page', () => {
    cy.visit("www.google.com")
});

When('we fill the search bar with', (datatable) => {
    var data = datatable.raw()
    ActionsPage.type_and_enter("input[role='combobox']", data)
});

