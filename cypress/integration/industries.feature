Feature: Industries

    Scenario: Initial Navigation

        Given we are in the Distillery main page

    Scenario Outline: Navigation Assert for menu <menu> option <option> point <point>

        When we hover over the "<menu>" menu
        And we select the "<option>" option
        Then we verify we are in "<option>" page
        And we scroll to "<point>" point

        Examples:

            | ID | menu       | option                            | point                                        |
            | 1  | Industries | FinTech                           | WHY FINTECH?                                 |
            | 2  | Industries | FinTech                           | WHY DISTILLERY FOR FINTECH?                  |
            | 3  | Industries | FinTech                           | WHAT IS FINTECH?                             |
            | 4  | Industries | Enterprise Cloud Storage          | WHY ENTERPRISE CLOUD STORAGE?                |
            | 5  | Industries | Enterprise Cloud Storage          | WHY DISTILLERY FOR ENTERPRISE CLOUD STORAGE? |
            | 6  | Industries | Enterprise Cloud Storage          | WHAT IS ENTERPRISE CLOUD STORAGE?            |
            | 7  | Industries | Emerging Technologies             | WHY EMERGING TECHNOLOGIES?                   |
            | 8  | Industries | Emerging Technologies             | WHY DISTILLERY FOR EMERGING TECHNOLOGIES?    |
            | 9  | Industries | Emerging Technologies             | WHAT IS EMERGING TECHNOLOGY?                 |
            | 10 | Industries | Media and\u00a0Entertainment      | WHY MEDIA AND ENTERTAINMENT?                 |
            | 11 | Industries | Media and\u00a0Entertainment      | WHY DISTILLERY FOR MEDIA AND ENTERTAINMENT?  |
            | 12 | Industries | Media and\u00a0Entertainment      | WHAT IS MEDIA AND ENTERTAINMENT TECHNOLOGY?  |
            | 13 | Industries | Marketplace and\u00a0Peer-to-Peer | WHAT IS MEDIA AND ENTERTAINMENT TECHNOLOGY?  |
            | 14 | Industries | Marketplace and\u00a0Peer-to-Peer | WHAT IS MEDIA AND ENTERTAINMENT TECHNOLOGY?  |
            | 15 | Industries | Marketplace and\u00a0Peer-to-Peer | WHAT IS MEDIA AND ENTERTAINMENT TECHNOLOGY?  |
            | 16 | Industries | Blockchain                        | WHY BLOCKCHAIN TECHNOLOGY?                   |
            | 17 | Industries | Blockchain                        | WHY DISTILLERY FOR BLOCKCHAIN?               |
            | 18 | Industries | Blockchain                        | WHAT IS BLOCKCHAIN?                          |
            | 19 | Industries | Healthcare                        | WHY HEALTHCARE?                              |
            | 20 | Industries | Healthcare                        | WHY DISTILLERY FOR HEALTHCARE?               |
            | 21 | Industries | Healthcare                        | WHAT IS HEALTHCARE SOFTWARE?                 |




