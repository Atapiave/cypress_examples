Feature: Blog

    Scenario Outline: Search article in blog

        Given we are in the Distillery main page
        When we select the "<menu>" menu
        And we search "<search>" in blog page
        Then we assert that the article is shown "<title>"

        Examples:

            | menu | search      | title                                                                                        |
            | Blog | DroidShoter | DroidShoter — Making Application Screenshots With Various Resolutions, Using The Same Device |

    Scenario Outline: Search not existing article

        Given we are in the Distillery main page
        When we select the "<menu>" menu
        And we search "<search>" in blog page
        Then we assert that the message "<message>" is shown

        Examples:

            | menu | search                   | title            | message                                                            |
            | Blog | ThisArticleDoesn'tExists | NO RESULTS FOUND | Sorry, we couldn’t find any results that match your search request |