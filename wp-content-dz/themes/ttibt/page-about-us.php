<?php
/**
 * Template Name: About Us
 *
 * @package TTI-Bhutan
 * @subpackage TTI-Bhutan
 * @since TTI-Bhutan 1.0
 */
?>
<?php get_header(); ?>

<?php include('inc/page-header.php'); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<div class="feature-area-1 ">
    <div class="container">
    <div class="title-area text-center">
            <!-- <span class="sub-title"><i class="fal fa-book me-2"></i>OUR I CARE</span> -->
            <h2 class="sec-title">I CARE</h2>
        </div>
        <div class="row gy-30 justify-content-xl-between justify-content-center">
            <?php if( have_rows('core_value') ): ?>
                <?php while( have_rows('core_value') ): the_row(); 
                    $i_care = get_sub_field('i_care');
                ?>
                <div class="col-sm-auto col-xl-auto col-lg-4 col-md-5">
                    <div class="feature-wrap">
                        <div class="feature_icon">
                            <img src="<?php bloginfo('template_directory'); ?>/assets/img/icon/feature-1_1.svg" alt="Icon">
                        </div>
                        <div class="media-body">
                            <h3 class="box-title"><?php echo acf_esc_html( $i_care ); ?></h3>
                        </div>
                    </div>
                </div>
                <?php endwhile; ?>
            <?php endif; ?>
        </div>
    </div>
</div>
<div class="overflow-hidden bg-white space">
    <div class="container">
        <div class="row justify-content-center justify-content-xl-between align-items-center">
            <div class="col-xl-6 mb-50 mb-xl-0">
                <div class="img-box10">
                    <div class="text-center text-xl-start tilt-active">
                    <?php
                        $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'about-box');
                        $fallback_image = get_template_directory_uri() . '/assets/img/ab_us.jpg';
                    ?>
                    <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="<?php the_title(); ?>" class="br-10">
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="title-area mb-35">
                    <span class="sub-title"><i class="fal fa-book me-2"></i> About Our Institute</span>
                    <h2 class="sec-title">Welcome to <?php bloginfo('name'); ?>.</h2>
                </div>
                <?php the_content(); ?>
            </div>
        </div>
    </div>
</div>
<?php include('inc/home-tti-counter.php'); ?>
<section class="cta-area-2 position-relative space-bottom">
    <div class="cta-bg-img" data-bg-src="<?php bloginfo('template_directory'); ?>/assets/img/default_one.jpg">
    </div>
    <div class="container">
        <div class="row gy-4 justify-content-center align-items-center">
            <div class="col-md-6 col-lg-6">
                <?php if (get_field('vision')): ?>
                <div class="moto-box mb-2">
                    <div class="moto-box_icon">
                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/update1/icon/moto_1_2.png" alt="icon">
                    </div>
                    <h5 class="moto-box_title">Our Vision</h5>
                    <p class="moto-box_text"><?php echo get_field('vision'); ?></p>
                </div>
                <?php endif ?>
                <?php if (get_field('mission')): ?>
                <div class="moto-box">
                    <div class="moto-box_icon">
                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/update1/icon/moto_1_1.png" alt="icon">
                    </div>
                    <h5 class="moto-box_title">Our Mission</h5>
                    <p class="moto-box_text"><?php echo get_field('mission') ; ?></p>
                </div>
                <?php endif ?>            
            </div>
            <div class="col-md-6 col-lg-6 col-sm-12">
                <div class="moto-box">
                    <div class="moto-box_icon">
                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/update1/icon/moto_1_1.png" alt="icon">
                    </div>
                    <h5 class="moto-box_title">Objectives</h5>
                    <?php if( have_rows('objectives') ): ?>
                    <div class="checklist style3 mb-5">
                        <ul>
                            <?php while( have_rows('objectives') ): the_row(); 
                                $objectives = get_sub_field('objectives');
                            ?>
                            <li><?php echo acf_esc_html( $objectives ); ?></li>
                            <?php endwhile; ?>
                        </ul>
                    </div>
                    <?php endif; ?>                    
                </div>
            </div>
        </div>
    </div>
</section>





<?php endwhile; endif; ?>
<?php get_footer(); ?>