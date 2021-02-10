import { Given, When, Then } from "cypress-cucumber-preprocessor/steps"
import ActionsPage from '../../pages/actions.pages.js'
import Asserts from '../../utilities/asserts.js'
import MainPageLocator from '../../locators/main_page.locators.js'

const asserts = new Asserts()
const actions_page = new ActionsPage()
const main_page_locator = new MainPageLocator()

Given('we are in the Distillery main page', () => {
    cy.visit("https://distillery.com/")
});

When('we hover over the {string} menu', (menu_name) => {
    actions_page.hover_element_from_list(main_page_locator.main_menu(), menu_name)
});

When('we select the {string} menu', (menu_name) => {
    actions_page.click_element_from_list(main_page_locator.main_menu(), menu_name)
});

When('we select the {string} option {string} {string}', (option_name, href, nbsp) => {
    if (nbsp == 'N') {
        actions_page.click_element_from_list(main_page_locator.options(), option_name)
    }
    else {
        actions_page.click_element_xpath(main_page_locator.options_nbsp(href))
    }
});

Then('we verify we are in {string} page', (page_title) => {
    asserts.assert_contains(main_page_locator.page_title(), page_title)
});

Then('we scroll to {string} point', (point) => {
    actions_page.scroll_to_element(main_page_locator.subtitle(), point)
});