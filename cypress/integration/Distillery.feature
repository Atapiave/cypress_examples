Feature: Distillery

    Scenario: Main Page

        Given we are in the Distillery main page
        When we select the "Industries" menu
        And we select the "FinTech" option
        Then we verify we are in "FinTech" page