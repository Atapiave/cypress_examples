import {Given, When, Then} from "cypress-cucumber-preprocessor/steps"

Given('we are in the google main page', () => {
    cy.visit("www.google.com")
});

When('we fill the search bar with', (datatable) => {
    var data = datatable.raw()
    cy.get("input[role='combobox']").type(String(data[0]))
    .type("{enter}")
});

