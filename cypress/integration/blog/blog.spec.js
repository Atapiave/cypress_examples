import { When, Then } from "cypress-cucumber-preprocessor/steps"
import Asserts from '../../utilities/asserts.js'
import BlogPage from "../../pages/blog.pages.js"
import BlogPageLocator from "../../locators/blog.locators.js"

const asserts = new Asserts()
const blog_page = new BlogPage()
const blog_page_locator = new BlogPageLocator()

When('we search {string} in blog page', (value) => {
    blog_page.search(value)
});

Then('we assert that the article is shown {string}', (title) => {
    asserts.assert_contains(blog_page_locator.article_title(), title)
});

Then('we assert that the message {string} is shown', (message) => {
    asserts.assert_contains(blog_page_locator.not_found_message(), message)
});