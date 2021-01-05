import {Given, When, Then} from "cypress-cucumber-preprocessor/steps"

Given('we are in the google main page', () => {
    cy.visit("www.google.com")
});