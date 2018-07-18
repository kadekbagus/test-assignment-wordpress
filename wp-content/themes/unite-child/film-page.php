<?php 
/* Template Name: FilmPage */ 

get_header(); ?>

    <div id="primary" class="content-area col-sm-12 col-md-8">
        <main id="main" class="site-main" role="main">

        <?php if ( have_posts() ) : ?>

        <?php
        $args = array( 'post_type' => array('films'), 'posts_per_page' => 10 );
        $loop = new WP_Query( $args );
        while ( $loop->have_posts() ) : $loop->the_post();
          the_title( '<h2 class="entry-title"><a href="' . get_permalink() . '" title="' . the_title_attribute( 'echo=0' ) . '" rel="bookmark">', '</a></h2>' );
        endwhile;
        ?>

        <?php endif; ?>

        </main><!-- #main -->
    </div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>

?>