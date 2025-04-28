<?php
$slider_args = array(
    'post_type'         => 'post',
    'category_name'     => 'slider',
    'posts_per_page'    => 5,
    'post_status'       => 'publish',
    'order'             => 'DESC',
);

$slider_query = new WP_Query($slider_args);
?>

<?php if ($slider_query->have_posts()) : ?>
<div class="th-hero-wrapper hero-8" id="hero">
    <div class="hero-slider-3 th-carousel" 
         data-fade="true" 
         data-slide-show="1" 
         data-md-slide-show="1" 
         data-dots="false" 
         data-xl-dots="false" 
         data-ml-dots="false" 
         data-lg-dots="false">
        
        <?php while ($slider_query->have_posts()) : $slider_query->the_post(); ?>
        <div class="th-hero-slide">
            <?php
                $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                $fallback_image = get_template_directory_uri() . '/assets/img/slider_one.jpg';
            ?>
            
            <div class="th-hero-bg ken-burns-bg" data-bg-src="<?php echo $thumbnail_url ?: $fallback_image; ?>">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/update1/hero/hero_overlay_8.png" alt="overlay">
            </div>
            
            <div class="container z-index-common">
                <div class="hero-style8">
                    <div class="hero-meta" data-ani="slideinup" data-ani-delay="0.2s">
                        <span>TTI</span>
                        <span>Thimphu</span>
                    </div>
                    
                    <h1 class="hero-title" data-ani="slideinup" data-ani-delay="0.3s">
                        <?php the_title(); ?>
                    </h1>
                    
                    <h1 class="hero-title" data-ani="slideinup" data-ani-delay="0.5s">
                        Quality <span class="bg-theme">Education</span>
                    </h1>
                    
                    <p class="hero-text" data-ani="slideinup" data-ani-delay="0.6s">
                        Enthusiastically provide access to client-focused testing procedures through cooperative niches. 
                        Intrinsicly promote compelling methods of empowerment before.
                    </p>
                    
                    <div class="btn-group" data-ani="slideinup" data-ani-delay="0.6s">
                        <a href="<?php echo home_url('/courses'); ?>" class="th-btn style3">
                            Explore Courses<i class="fas fa-long-arrow-right ms-2"></i>
                        </a>
                        <a href="<?php echo home_url(); ?>" class="th-btn style6">
                            Contact Us<i class="fas fa-long-arrow-right ms-2"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>
<?php endif; wp_reset_postdata(); ?>