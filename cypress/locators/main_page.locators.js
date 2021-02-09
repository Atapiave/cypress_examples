class MainPageLocator {
    main_menu() {
        return '.navigation-menu__item-link'
    }

    options() {
        return '.nav-content.navigation-menu__item-content  .nav-content__subcategory-wrap > a '
    }

    page_title() {
        return '.jumbotron__main-heading.styleguide-typography__main-heading'
    }

    subtitle() {
        return '.expertise-detail__title.styleguide-typography__subtitle'
    }
};

export default MainPageLocator;