<?php
add_theme_support( 'menus' );
add_theme_support( 'post-thumbnails' );
add_image_size( 'width-box', 390, 280, true );
add_image_size( 'event-box', 910, 392, true );
add_image_size( 'big-blog-box', 680, 350, true );
add_image_size( 'blog-thumb', 235, 195, true );
add_image_size( 'staff-box', 280, 280, true );
add_image_size( 'about-box', 650, 540, true );
// add_image_size( 'partner-box', 235, 110, true );
// add_image_size( 'featured-box', 800, 1100, true );
// add_image_size( 'featured-long', 1920, 700, true );
add_image_size( 'slider-box', 1920, 900, true );

function theme_style() {
    wp_enqueue_style( 'wpttit_animate', get_stylesheet_directory_uri() . '/assets/css/animate.css', '', filemtime( get_stylesheet_directory() . '/assets/css/animate.css' ) );
    wp_enqueue_style( 'wpttit_bootstrap', get_stylesheet_directory_uri() . '/assets/css/bootstrap.min.css', '', filemtime( get_stylesheet_directory() . '/assets/css/bootstrap.min.css' ) );
    wp_enqueue_style( 'wpttit_fontawesome', get_stylesheet_directory_uri() . '/assets/css/fontawesome.min.css', '', filemtime( get_stylesheet_directory() . '/assets/css/fontawesome.min.css' ) );
    wp_enqueue_style( 'wpttit_magnific', get_stylesheet_directory_uri() . '/assets/css/magnific-popup.min.css', '', filemtime( get_stylesheet_directory() . '/assets/css/magnific-popup.min.css' ) );
    wp_enqueue_style( 'wpttit_slick', get_stylesheet_directory_uri() . '/assets/css/slick.min.css', '', filemtime( get_stylesheet_directory() . '/assets/css/slick.min.css' ) );
    wp_enqueue_style( 'wpttit_select', get_stylesheet_directory_uri() . '/assets/css/nice-select.min.css', '', filemtime( get_stylesheet_directory() . '/assets/css/nice-select.min.css' ) );
    wp_enqueue_style( 'wpttit_style', get_stylesheet_directory_uri() . '/assets/css/style.css', '', filemtime( get_stylesheet_directory() . '/assets/css/style.css' ) );
    // wp_enqueue_style( 'wpttit_swiper', get_stylesheet_directory_uri() . '/assets/css/swiper-bundle.min.css', '', filemtime( get_stylesheet_directory() . '/assets/css/swiper-bundle.min.css' ) );
    wp_enqueue_style( 'wpsamu_style', get_stylesheet_directory_uri() . '/style.css', '', filemtime( get_stylesheet_directory() . '/style.css' ) );
}
add_action( 'wp_enqueue_scripts', 'theme_style' );

function add_categories_to_pages() {
    // Add category support to pages
    register_taxonomy_for_object_type('category', 'page');
}
add_action('init', 'add_categories_to_pages');


// Breadcrumb Function with Schema Markup
function custom_breadcrumb($custom_home_icon = false, $custom_post_types = false) {
    wp_reset_query();
    global $post;
    
    $is_custom_post = $custom_post_types ? is_singular($custom_post_types) : false;
    
    if (!is_front_page() && !is_home()) {
        echo '<ul class="breadcumb-menu" itemscope itemtype="https://schema.org/BreadcrumbList">';
        echo '<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">';
        echo '<a itemprop="item" href="' . esc_url(home_url('/')) . '"><span itemprop="name">';
        echo $custom_home_icon ? $custom_home_icon : 'Home';
        echo '</span></a><meta itemprop="position" content="1" /></li>';
        
        if (is_category() || is_single() || $is_custom_post) {
            $category = get_the_category();
            if (!empty($category)) {
                echo '<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">';
                echo '<a itemprop="item" href="' . esc_url(get_category_link($category[0]->term_id)) . '"><span itemprop="name">' . esc_html($category[0]->name) . '</span></a>';
                echo '<meta itemprop="position" content="2" /></li>';
            }
            if (is_single()) {
                echo '<li class="style-2" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">';
                echo '<span itemprop="name">' . get_the_title() . '</span>';
                echo '<meta itemprop="position" content="3" /></li>';
            }
        } elseif (is_page()) {
            echo '<li class="style-2" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">';
            echo '<span itemprop="name">' . get_the_title() . '</span>';
            echo '<meta itemprop="position" content="2" /></li>';
        } elseif (is_404()) {
            echo '<li class="style-2" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">';
            echo '<span itemprop="name">404</span>';
            echo '<meta itemprop="position" content="2" /></li>';
        }
        echo '</ul>';
    }
}


function create_widget( $name, $id, $description ) {

    register_sidebar(array(
        'name' => __( $name ),
        'id' => $id,
        'description' => __( $description ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h3>',
        'after_title' => '</h3>'
    ));

}

create_widget( 'Sidebar archive Details', 'sidebar-archive', 'Displays on the sidebar archive details' );
create_widget( 'Sidebar Category List', 'sidebar-cat-list', 'Displays on the sidebar cat list' );

create_widget( 'Post and Page Quote', 'quote', 'Displays Quotes in all!' );
create_widget( 'Tours Includes', 'whats-included', 'Displays Includes in tour page!' );