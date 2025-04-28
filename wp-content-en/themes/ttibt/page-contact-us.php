<?php
/**
 * Template Name: Contact Us
 *
 * @package TTI-Bhutan
 * @subpackage TTI-Bhutan
 * @since TTI-Bhutan 1.0
 */
?>
<?php get_header(); ?>

<?php include('inc/page-header.php'); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<div class="space" id="contact-sec">
    <div class="container">
        <?php if (get_field('map_google_embed')): ?>
        <div class="map-sec">
            <div class="map">
            <?php echo  get_field('map_google_embed'); ?>
            </div>
        </div>
        <?php endif; ?>
        <div class="title-area mb-25 mt-25">
            <h2 class="border-title h3">Have Any Questions?</h2>
        </div>
        <p class="mt-n2 mb-25">Have a inquiry or some feedback for us? Fill out the form <br> below to contact our team.</p>
        <div class="row  justify-content-center justify-content-xl-between align-items-center">
            <?php if (get_field('email')): ?>
            <div class="col-xl-4 mb-30">
                <div class="contact-feature">
                    <div class="contact-feature-icon">
                        <i class="fal fa-envelope"></i>
                    </div>
                    <div class="media-body">
                        <p class="contact-feature_label">Email Address</p>
                        <span><?php echo esc_html( get_field('email') ); ?></span>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if (get_field('our_address')): ?>
            <div class="col-xl-4 mb-30">
                <div class="contact-feature">
                    <div class="contact-feature-icon">
                        <i class="fal fa-location-dot"></i>
                    </div>
                    <div class="media-body">
                        <p class="contact-feature_label">Our Address</p>
                        <span><?php echo esc_html( get_field('our_address') ); ?></span>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <?php if (get_field('phone_number')): ?>
            <div class="col-xl-4 mb-30">
                <div class="contact-feature">
                    <div class="contact-feature-icon">
                        <i class="fal fa-phone"></i>
                    </div>
                    <div class="media-body">
                        <p class="contact-feature_label">Phone Number</p>
                        <span><?php echo esc_html( get_field('phone_number') ); ?></span>
                    </div>
                </div>
            </div>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php endwhile; endif; ?>
<?php get_footer(); ?>