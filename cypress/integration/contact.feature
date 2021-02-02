Feature: Contact

    Scenario Outline: Send contact mail

        Given we are in the Distillery main page
        When we select the "<menu>" menu
        And we fill the fields on contact page with the next information
            | name   | email   | phone   | info   | updates   | policy   |
            | <name> | <email> | <phone> | <info> | <updates> | <policy> |
        And we click on submit button
        Then we assert that the message was sent


        Examples:

            | menu    | name      | email        | phone      | info                                       | updates | policy |
            | Contact | QA test 1 | random_email | 5511223344 | I'm an automation engineer from distillery | Y       | Y      |
