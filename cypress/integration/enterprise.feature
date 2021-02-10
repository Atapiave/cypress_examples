Feature: Enterprise

    Scenario: Initial Navigation

        Given we are in the Distillery main page

    Scenario Outline: Navigation Assert for menu <menu> option <option> point <point>

        When we hover over the "<menu>" menu
        And we select the "<option>" option "<href>" "<nbsp>"
        Then we verify we are in "<option>" page
        And we scroll to "<point>" point

        Examples:

            | ID | menu      | option                         | href | nbsp | point                                              |
            | 1  | Expertise | User Experience Design         |      | N    | WHY USER EXPERIENCE DESIGN (UX)?                   |
            | 2  | Expertise | User Experience Design         |      | N    | WHY DISTILLERY FOR UX DESIGN?                      |
            | 3  | Expertise | User Experience Design         |      | N    | WHAT IS UX?                                        |
            | 4  | Expertise | User Interface Design          |      | N    | WHY INTERFACE DESIGN?                              |
            | 5  | Expertise | User Interface Design          |      | N    | WHY DISTILLERY FOR INTERFACE DESIGN?               |
            | 6  | Expertise | User Interface Design          |      | N    | WHAT IS INTERFACE DESIGN?                          |
            | 7  | Expertise | Product Management             |      | N    | WHY PRODUCT MANAGEMENT?                            |
            | 8  | Expertise | Product Management             |      | N    | WHY DISTILLERY FOR PRODUCT MANAGEMENT?             |
            | 9  | Expertise | Product Management             |      | N    | WHAT IS PRODUCT MANAGEMENT?                        |
            | 10 | Expertise | Mobile App Development         |      | N    | WHY MOBILE APP DEVELOPMENT?                        |
            | 11 | Expertise | Mobile App Development         |      | N    | WHY DISTILLERY FOR MOBILE APP DEVELOPMENT?         |
            | 12 | Expertise | Mobile App Development         |      | N    | WHAT IS MOBILE APP DEVELOPMENT?                    |
            | 13 | Expertise | Web Development                |      | N    | WHY WEB DEVELOPMENT?                               |
            | 14 | Expertise | Web Development                |      | N    | WHY DISTILLERY FOR WEB DEVELOPMENT?                |
            | 15 | Expertise | Web Development                |      | N    | WHAT IS WEB DEVELOPMENT?                           |
            | 16 | Expertise | Enterprise App Development     |      | N    | WHY ENTERPRISE APP DEVELOPMENT?                    |
            | 17 | Expertise | Enterprise App Development     |      | N    | WHY DISTILLERY FOR ENTERPRISE APP DEVELOPMENT?     |
            | 18 | Expertise | Enterprise App Development     |      | N    | WHAT IS ENTERPRISE APP DEVELOPMENT?                |
            | 19 | Expertise | Internet of Things             |      | N    | WHY INTERNET OF THINGS (IOT)?                      |
            | 20 | Expertise | Internet of Things             |      | N    | WHY DISTILLERY FOR IOT?                            |
            | 21 | Expertise | Internet of Things             |      | N    | WHAT IS IOT?                                       |
            | 22 | Expertise | Data Analytics                 |      | N    | WHY DATA ANALYTICS?                                |
            | 23 | Expertise | Data Analytics                 |      | N    | WHY DISTILLERY FOR DATA ANALYTICS?                 |
            | 24 | Expertise | Data Analytics                 |      | N    | WHAT IS DATA ANALYTICS?                            |
            | 25 | Expertise | Amazon Alexa Skill Development |      | N    | WHY AMAZON ALEXA SKILL DEVELOPMENT?                |
            | 26 | Expertise | Amazon Alexa Skill Development |      | N    | WHY DISTILLERY FOR AMAZON ALEXA SKILL DEVELOPMENT? |
            | 27 | Expertise | Amazon Alexa Skill Development |      | N    | WHAT IS AMAZON ALEXA SKILL DEVELOPMENT?            |
