Feature: Industries

    Scenario: Initial Navigation

        Given we are in the Distillery main page

    Scenario Outline: Navigation Assert for menu <menu> option <option> point <point>

        When we hover over the "<menu>" menu
        And we select the "<option>" option "<href>" "<nbsp>"
        Then we verify we are in "<option>" page
        And we scroll to "<point>" point

        Examples:

            | ID | menu       | option                     | href                         | nbsp | point                                        |
            | 1  | Industries | FinTech                    |                              | N    | WHY FINTECH?                                 |
            | 2  | Industries | FinTech                    |                              | N    | WHY DISTILLERY FOR FINTECH?                  |
            | 3  | Industries | FinTech                    |                              | N    | WHAT IS FINTECH?                             |
            | 4  | Industries | Enterprise Cloud Storage   |                              | N    | WHY ENTERPRISE CLOUD STORAGE?                |
            | 5  | Industries | Enterprise Cloud Storage   |                              | N    | WHY DISTILLERY FOR ENTERPRISE CLOUD STORAGE? |
            | 6  | Industries | Enterprise Cloud Storage   |                              | N    | WHAT IS ENTERPRISE CLOUD STORAGE?            |
            | 7  | Industries | Emerging Technologies      |                              | N    | WHY EMERGING TECHNOLOGIES?                   |
            | 8  | Industries | Emerging Technologies      |                              | N    | WHY DISTILLERY FOR EMERGING TECHNOLOGIES?    |
            | 9  | Industries | Emerging Technologies      |                              | N    | WHAT IS EMERGING TECHNOLOGY?                 |
            | 10 | Industries | Media and Entertainment    | media-and-entertainment      | Y    | WHY MEDIA AND ENTERTAINMENT?                 |
            | 11 | Industries | Media and Entertainment    | media-and-entertainment      | Y    | WHY DISTILLERY FOR MEDIA AND ENTERTAINMENT?  |
            | 12 | Industries | Media and Entertainment    | media-and-entertainment      | Y    | WHAT IS MEDIA AND ENTERTAINMENT TECHNOLOGY?  |
            | 13 | Industries | Marketplace & Peer-to-Peer | marketplace-and-peer-to-peer | Y    | WHY PEER-TO-PEER MARKETPLACE?                |
            | 14 | Industries | Marketplace & Peer-to-Peer | marketplace-and-peer-to-peer | Y    | WHY DISTILLERY FOR PEER-TO-PEER MARKETPLACE? |
            | 15 | Industries | Marketplace & Peer-to-Peer | marketplace-and-peer-to-peer | Y    | WHAT IS PEER-TO-PEER MARKETPLACE?            |
            | 16 | Industries | Blockchain                 |                              | N    | WHY BLOCKCHAIN TECHNOLOGY?                   |
            | 17 | Industries | Blockchain                 |                              | N    | WHY DISTILLERY FOR BLOCKCHAIN?               |
            | 18 | Industries | Blockchain                 |                              | N    | WHAT IS BLOCKCHAIN?                          |
            | 19 | Industries | Healthcare                 |                              | N    | WHY HEALTHCARE?                              |
            | 20 | Industries | Healthcare                 |                              | N    | WHY DISTILLERY FOR HEALTHCARE?               |
            | 21 | Industries | Healthcare                 |                              | N    | WHAT IS HEALTHCARE SOFTWARE?                 |




