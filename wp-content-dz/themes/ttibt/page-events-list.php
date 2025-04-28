<?php
/**
 * Template Name: Event Lists
 *
 * @package TTI-Bhutan
 * @subpackage TTI-Bhutan
 * @since TTI-Bhutan 1.0
 */
?>
<?php get_header(); ?>

<?php include('inc/page-header.php'); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php
    $childssargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1 ,
        // 'post_parent__in'    => array(127, 106, ),
        // 'post__in' => array( 24 ),
        'post_parent'    => $post->ID,
        'post_status'       => 'publish',
        'order'          => 'DESC',
        'orderby'        => 'menu_order'
        );
    $childschildrens = new WP_Query( $childssargs );
?>
<?php if ( $childschildrens->have_posts() ) : ?>
<section class="space-top space-extra-bottom">
    <div class="container">
        <div class="row gy-40 gx-70 justify-content-center align-items-center">
            <?php while ( $childschildrens->have_posts() ) : $childschildrens->the_post(); ?>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img" data-mask-src="<?php bloginfo('template_directory'); ?>/assets/img/event/event_img-shape.png">
                        <?php
                                $events_img = get_the_post_thumbnail_url($childschildrens->ID,'staff-box');
                            ?>
                        <img src="<?php if ( has_post_thumbnail() ) { echo $events_img; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/event/event_img-1.png <?php } ?>" width="200px" alt="<?php the_title(); ?> Team">
                    </div>
                    <div class="event-card_content">
                        <?php if (get_field('date')): ?>
                        <div class="event-author">
                            <div class="avater">
                                <i class="fal fa-calendar"></i>
                            </div>
                            <div class="details">
                                <span class="author-name">Date</span>
                                <p class="author-desig"><?php echo esc_html( get_field('date') ); ?></p>
                            </div>
                        </div>
                        <?php endif ?>
                        <div class="event-meta">
                            <?php if (get_field('venue')): ?>
                            <p><i class="fal fa-location-dot"></i><?php echo esc_html( get_field('venue') ); ?></p>
                            <?php endif ?>
                            <?php if (get_field('start_time') || get_field('end_time')): ?>
                            <p><i class="fal fa-clock"></i><?php echo esc_html( get_field('start_time') ); ?> - <?php echo esc_html( get_field('end_time') ); ?></p>
                            <?php endif ?>
                        </div>
                        <h3 class="event-card_title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                        <div class="event-card_bottom">
                            <a href="<?php the_permalink(); ?>" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="<?php bloginfo('template_directory'); ?>/assets/img/event/event-box-shape1.png" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
            <!-- <div class="col-12 text-center">
                <div class="th-pagination ">
                    <ul>
                        <li><a href="blog.html">01</a></li>
                        <li><a href="blog.html">02</a></li>
                        <li><a href="blog.html">03</a></li>
                        <li><a href="blog.html"><i class="far fa-arrow-right"></i></a></li>
                    </ul>
                </div>
            </div> -->
        </div>
    </div>
</section>
<?php endif; wp_reset_query(); ?>
<?php endwhile; endif; ?>
<?php get_footer(); ?>