<?php
/**
 * The Template for displaying all single posts.
 *
 * @package unite
 */

get_header(); ?>

    <div id="primary" class="content-area col-sm-12 col-md-8 <?php echo of_get_option( 'site_layout' ); ?>">
        <main id="main" class="site-main" role="main">

        <?php while ( have_posts() ) : the_post(); ?>

            <?php get_template_part( 'content', 'single' ); ?>

            <?php if ( get_post_type( get_the_ID() ) == 'films' ) : ?>
                <p><b>Country : </b> <?php display_taxonomy_terms('country'); ?></p>
                <p><b>Genre : </b> <?php display_taxonomy_terms('genre'); ?></p>
                <p><b>Ticket Price : </b> <?php  echo get_post_meta(get_the_ID(), 'ticket_price', true); ?></p>
                <p><b>Release Date : </b> <?php echo date('jS F, Y', strtotime(get_post_meta(get_the_ID(), 'release_date', true))); ?></p>
            <?php endif; ?>

            <?php unite_post_nav(); ?>

            <?php
                // If comments are open or we have at least one comment, load up the comment template
                if ( comments_open() || '0' != get_comments_number() ) :
                    comments_template();
                endif;
            ?>

        <?php endwhile; // end of the loop. ?>

        </main><!-- #main -->
    </div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>