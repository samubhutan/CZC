<?php
/**
 * Template Name: Event Details
 * Template Post Type: post, page
 *
 * @package TTI-Bhutan
 * @subpackage TTI-Bhutan
 * @since TTI-Bhutan 1.0
 */
?>
<?php get_header(); ?>

<?php include('inc/page-header.php'); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<section class="space-top space-extra-bottom">
    <div class="container">
        <div class="row">
            <div class="col-xxl-9 col-lg-8">
                <div class="event-details-wrap">
                    <div class="event-img">
                        <?php
                            $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'event-box');
                            $fallback_image = get_template_directory_uri() . '/assets/img/course/course-details.png';
                        ?>
                        <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="<?php the_title(); ?>">
                    </div>
                    <h3 class="h3 mt-n2"><?php the_title(); ?></h3>
                    <?php the_content(); ?>
                </div>
            </div>
            <div class="col-xxl-3 col-lg-4">
                <aside class="sidebar-area">
                    <div class="widget widget_info  ">
                        <h3 class="widget_title">Event Information</h3>
                        <div class="info-list">
                            <ul>
                                <?php if (get_field('date')): ?>
                                <li>
                                    <i class="fa-light fa-calendar-days"></i>
                                    <strong>Date: </strong>
                                    <span><?php echo esc_html( get_field('date') ); ?></span>
                                </li>
                                <?php endif ?>
                                <?php if (get_field('start_time') || get_field('end_time')): ?>
                                <li>
                                    <i class="fa-light fa-clock"></i>
                                    <strong>Time: </strong>
                                    <span><?php echo esc_html( get_field('start_time') ); ?> - <?php echo esc_html( get_field('end_time') ); ?></span>
                                </li>
                                <?php endif ?>
                                <?php if (get_field('venue')): ?>
                                <li>
                                    <i class="fa-light fa-location-dot"></i>
                                    <strong>Venue: </strong>
                                    <span><?php echo esc_html( get_field('venue') ); ?></span>
                                </li>
                                <?php endif ?>
                                <?php if (get_field('address')): ?>
                                <li>
                                    <i class="fa-light fa-map"></i>
                                    <strong> Address: </strong>
                                    <span><?php echo esc_html( get_field('address') ); ?></span>
                                </li>
                                <?php endif ?>
                                <?php if (get_field('number')): ?>
                                <li>
                                    <i class="fa-light fa-phone"></i>
                                    <strong>Phone: </strong>
                                    <span><?php echo esc_html( get_field('number') ); ?></span>
                                </li>
                                <?php endif ?>
                            </ul>
                        </div>
                    </div>
                    <?php if (get_field('map')): ?>
                    <div class="widget widget_banner p-0  ">
                        <div class="widget-map">
                            <?php echo  get_field('map'); ?>
                        </div>
                    </div>
                    <?php endif ?>
                </aside>
            </div>
        </div>
    </div>
</section>
<?php endwhile; endif; ?>
<?php get_footer(); ?>