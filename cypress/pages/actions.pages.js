
class ActionsPage {

    click_element(element) {
        cy.get(element).click()
    }

    click_element_force(element) {
        cy.get(element).click({ force: true })
    }

    hit_enter_key(element) {
        cy.get(element).type("{enter}")
    }

    type_text(element, value) {
        cy.get(element).type(value)
    }

    type_and_enter(element, value) {
        cy.get(element).type(String(value)).type("{enter}")
    }

    click_element_from_list(element, value) {
        cy.get(element).each(($el) => {
            if ($el.text().includes(value)) {
                this.click_element($el)
            }
        })
    }


    hover_element(element) {
        cy.get(element).trigger('mouseover')
    }

    hover_element_from_list(element, value) {
        cy.get(element).each(($el) => {
            if ($el.text().includes(value)) {
                this.hover_element($el)
            }
        })
    }

    scroll_to_element(element, value) {
        cy.get(element).each(($el) => {
            if ($el.text().includes(value)) {
                element.scrollIntoView();
            }
        })
    }
};

export default ActionsPage;