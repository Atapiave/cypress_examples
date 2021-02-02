Feature: Distillery

    Scenario Outline: Main Page

        Given we are in the Distillery main page
        When we hover over the "<menu>" menu
        And we select the "<option>" option
        Then we verify we are in "<page>" page
        And we scroll to "<point>" point

        Examples:

            | menu       | option                   | page                     | point                             |
            | Industries | FinTech                  | FinTech                  | WHAT IS FINTECH?                  |
            | Industries | Enterprise Cloud Storage | Enterprise Cloud Storage | WHAT IS ENTERPRISE CLOUD STORAGE? |
            | Industries | Emerging Technologies    | Emerging Technologies    | WHAT IS EMERGING TECHNOLOGY?      |

    Scenario Outline: Contact

        Given we are in the Distillery main page
        When we select the "<menu>" menu
        And we fill the fields on contact page with the next information
            | name   | email   | phone   | info   | updates   | policy   |
            | <name> | <email> | <phone> | <info> | <updates> | <policy> |
        And we click on submit button
        Then we assert that the message was sent


        Examples:

            | menu    | name      | email             | phone      | info                                       | updates | policy |
            | Contact | QA test 1 | qatest1@gmail.com | 5511223344 | I'm an automation engineer from distillery | Y       | Y      |

    # Scenario: Insert into table

    #     Then we insert into table "customer"
    #         | idcustomer | customer_name | customer_balance | customer_address |
    #         | 2          | Jacob         | 100              | Sonora           |
    #         | 3          | Jose          | 200              | Miguel           |