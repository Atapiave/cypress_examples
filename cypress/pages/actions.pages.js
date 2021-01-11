
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

    assert_containts: function (element, value) {
        cy.get(element).contains(value)
    },

    assert_is_visible: function (element) {
        cy.get(element).should('be.visible')
    },

    click_element_from_list: function (element, value) {
        cy.get(element).each(($el) => {
            if ($el.text().includes(value)) {
                ActionsPage.click_element($el)
            }
        })
    },

    hover_element: function (element) {
        cy.get(element).trigger('mouseover')
    },

    hover_element_from_list: function (element, value) {
        cy.get(element).each(($el) => {
            if ($el.text().includes(value)) {
                ActionsPage.hover_element($el)
            }
        })
    }
};

export default ActionsPage;