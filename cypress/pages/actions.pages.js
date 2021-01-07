
var ActionsPage = {

    click_element: function (element) {
        cy.get(element).click()
    },

    hit_enter_key: function (element) {
        cy.get(element).type("{enter}")
    },

    type_and_enter: function (element, value) {
        cy.get(element).type(String(value)).type("{enter}")
    },

    assert_text: function (element, value) {
        cy.get(element).should('have.text', value)
    },

    assert_is_visible: function (element) {
        cy.get(element).should('be.visible')
    }

};

export default ActionsPage;