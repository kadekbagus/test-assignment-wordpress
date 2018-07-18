<?php
/*
* creating child themes from parent themes unite
* @author Kadek Bagus
*/
function unite_child_theme() {

    $parent_style = 'unite-style'; 

    wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( $parent_style ),
        wp_get_theme()->get('Version')
    );
}
add_action( 'wp_enqueue_scripts', 'unite_child_theme' );


/*
* creating custom post type 'films'
* @author Kadek Bagus
*/
function post_type_films() {
    register_post_type( 'films',
        array(
            'labels' => array(
                'name' => __( 'Films' ),
                'singular_name' => __( 'Film' )
            ),
            'public' => true,
            'has_archive' => true,
            'supports' => array('title', 'editor', 'genre', 'country', 'year', 'actors'),
            'rewrite' => array('slug' => 'films'),
        )
    );
}
add_action( 'init', 'post_type_films' );

