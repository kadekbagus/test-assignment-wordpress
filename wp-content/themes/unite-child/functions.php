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

/*
* function for displaying 5 latest films on sidebar (widget)
* @author Kadek Bagus
*/
function display_films_sidebar(){
    $args = array( 'post_type' => array('films'), 'posts_per_page' => 5 );
    $loop = new WP_Query( $args );
    while ( $loop->have_posts() ) : $loop->the_post();
      the_title( '<p class="entry-content"><a href="' . get_permalink() . '" title="' . the_title_attribute( 'echo=0' ) . '" rel="bookmark">', '</a></p>' );
    endwhile;
}

// Register and load the widget
function my_films_widget() {
    register_widget( 'films_widget' );
}
add_action( 'widgets_init', 'my_films_widget' );
 
// Creating the widget 
class films_widget extends WP_Widget {
 
function __construct() {
    parent::__construct('films_widget', 
                        __('Films Widget', 'films_widget_domain'), 
                        array( 'description' => __( 'Widget for displaying films', 
                        'films_widget_domain' ), ) 
        );
}
 
// Widget Frontend
public function widget( $args, $instance ) {
$title = apply_filters( 'widget_title', $instance['title'] );
 
echo $args['before_widget'];
if ( ! empty( $title ) )
    echo $args['before_title'] . $title . $args['after_title'];
    display_films_sidebar();
}
         
// Widget Backend 
public function form( $instance ) {
    if ( isset( $instance[ 'title' ] ) ) {
        $title = $instance[ 'title' ];
    }
    else {
        $title = __( 'New title', 'films_widget_domain' );
    }
?>
    <p>
    <label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
    <input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
    </p>
<?php 
}
     
// Updating widget 
public function update( $new_instance, $old_instance ) {
    $instance = array();
    $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
    return $instance;
    }
}