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

/*
* creating taxonomy genre,country,year,actors and link it to films post type
* @author Kadek Bagus
*/
function genre_taxonomy() {
    register_taxonomy(
        'genre',
        'films',
        array(
            'label' => __( 'Genre' ),
            'rewrite' => array( 'slug' => 'genre' ),
        )
    );
}
function country_taxonomy() {
    register_taxonomy(
        'country',
        'films',
        array(
            'label' => __( 'Country' ),
            'rewrite' => array( 'slug' => 'country' ),
        )
    );
}
function year_taxonomy() {
    register_taxonomy(
        'year',
        'films',
        array(
            'label' => __( 'Year' ),
            'rewrite' => array( 'slug' => 'year' ),
        )
    );
}
function actors_taxonomy() {
    register_taxonomy(
        'actors',
        'films',
        array(
            'label' => __( 'Actors' ),
            'rewrite' => array( 'slug' => 'actors' ),
        )
    );
}

add_action( 'init', 'genre_taxonomy' );
add_action( 'init', 'country_taxonomy' );
add_action( 'init', 'year_taxonomy' );
add_action( 'init', 'actors_taxonomy' );

/*
* function for displaying custom taxonomy
* @author Kadek Bagus
*/
function display_taxonomy_terms($post_type, $display = false) {
    global $post;
    
    $term_list = wp_get_post_terms($post->ID, $post_type, array('fields' => 'names'));

    if($display == false) {
        echo $term_list[0];
    }elseif($display == 'return') {
        return $term_list[0];
    }
}