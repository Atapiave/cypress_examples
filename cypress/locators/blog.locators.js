class BlogPageLocator {
    search_textbox() {
        return '.styleguide-input.styleguide-input_gray.styleguide-input_search'
    }

    search_button() {
        return '.styleguide-input_search__button'
    }

    article_title() {
        return '.article.article_mini  .article__link'
    }

    not_found_message() {
        return '.empty-search-result-block > p:nth-of-type(1)'
    }
}

export default BlogPageLocator;