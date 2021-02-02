Feature: Main Page

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
