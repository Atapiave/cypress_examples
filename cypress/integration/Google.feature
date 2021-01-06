Feature: Search

    Scenario: Search in google

        Given we are in the google main page
        When we fill the search bar with
            | Distillery |
        And the user selects the option with the legend
            | Distillery: A Software Development Company |