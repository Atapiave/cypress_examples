import BlogPageLocator from '../locators/blog.locators.js';
import ActionsPage from "./actions.pages"

const actions = new ActionsPage()
const blog_page_locator = new BlogPageLocator()

class BlogPage {
    search(value) {
        actions.type_text(blog_page_locator.search_textbox(), value)
        actions.click_element_force(blog_page_locator.search_button())
    }
}
export default BlogPage;