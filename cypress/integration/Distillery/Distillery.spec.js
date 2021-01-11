import { Given, When, Then } from "cypress-cucumber-preprocessor/steps"
import ActionsPage from '../../pages/actions.pages'

Given('we are in the Distillery main page', () => {
    cy.visit("https://distillery.com/")
});

When('we select the {string} menu', (menu_name) => {
    ActionsPage.hover_element_from_list('.navigation-menu__item-link', menu_name)
});

When('we select the {string} option', (option_name) => {
    ActionsPage.click_element_from_list('div:nth-of-type(1) > .nav-content.navigation-menu__item-content  .nav-content__subcategory-wrap > a ', option_name)
});

Then('we verify we are in {string} page', (page_title) => {
    ActionsPage.assert_containts('.jumbotron__main-heading.styleguide-typography__main-heading', page_title)
});