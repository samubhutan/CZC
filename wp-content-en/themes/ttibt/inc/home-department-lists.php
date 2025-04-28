<?php
    $home_departments_args = array(
        'post_type'      => 'page',
        'posts_per_page' => -1,
        // 'post_parent__in'    => array(127, 106, ),
        // 'post__in' => array( 24 ),
        'post_parent'    => 6,
        'post_status'       => 'publish',
        'order'          => 'ASC',
        'orderby'        => 'menu_order'
    );
    $home_departments_childrens = new WP_Query( $home_departments_args );
?>
<?php if ( $home_departments_childrens->have_posts() ) : ?>

<section class="space" data-bg-src="<?php bloginfo('template_directory'); ?>/assets/img/update1/bg/category_bg_1.jpg">
    <div class="container">
        <div class="row mt-50 justify-content-center justify-content-xl-between align-items-center">
            <div class="col-xl-8 mb-n2 mb-xl-0">
                <div class="title-area text-center text-xl-start">
                    <span class="sub-title">Our Departments</span>
                    <h2 class="sec-title fw-semibold">Explore Our Expert Divisions</h2>
                </div>
            </div>
            <div class="col-auto">
                <div class="sec-btn">
                    <a href="<?php bloginfo('url'); ?>/department/" class="th-btn">View All Departments<i class="fas fa-arrow-right ms-2"></i></a>
                </div>
            </div>
        </div>
        <div class="row gy-4">
            <?php while ( $home_departments_childrens->have_posts() ) : $home_departments_childrens->the_post(); ?>
            <div class="col-lg-6 col-xl-4">
                <div class="category-list2">
                    <div class="category-list2_icon">
                        <?php
                            $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'event-box');
                            $fallback_image = get_template_directory_uri() . '/assets/img/update1/icon/category_2_1.svg';
                        ?>
                        <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="<?php the_title(); ?> Image">
                    </div>
                    <div class="category-list2_content">
                        <h3 class="category-list2_title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                        <!-- <span class="category-list2_text">256 Courses</span> -->
                    </div>
                    <a href="<?php the_permalink(); ?>" class="icon-btn"><i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</section>
<?php endif; wp_reset_query(); ?>