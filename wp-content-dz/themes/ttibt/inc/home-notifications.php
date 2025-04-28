<?php
date_default_timezone_set('Asia/Thimphu');
$today = date('Y-m-d'); // Get today's date in 'Y-m-d' format.

$home_notifications_args = array(
    'post_type'         => 'post',
    'category_name'     => 'spotlight',
    'posts_per_page'    => 5,
    'post_status'       => 'publish',
    'order'             => 'DESC',
    'meta_query'        => array(
        'relation' => 'AND',
        array(
            'key'     => 'start_date', // ACF field for start date
            'value'   => $today,
            'compare' => '<=',
            'type'    => 'DATE'
        ),
        array(
            'key'     => 'end_date', // ACF field for end date
            'value'   => $today,
            'compare' => '>=',
            'type'    => 'DATE'
        )
    )
);

$home_notifications_query = new WP_Query($home_notifications_args);
?>

<?php if ($home_notifications_query->have_posts()) : ?>
<section class="space mt-50 mb-0 pb-0 pt-30" id="course-sec">
    <div class="container gr-bg1 br-10">
        <div class="row th-carousel" data-slide-show="1" data-ml-slide-show="1" data-lg-slide-show="1" data-md-slide-show="1" data-sm-slide-show="1" data-arrows="true">
            <?php while ($home_notifications_query->have_posts()) : $home_notifications_query->the_post(); ?>
            <div class="col-xl-12">
                <div class="row justify-content-center align-items-center py-5 px-5">
                    <div class="col-xl-6">
                        <div class="title-area mb-1">
                            <h2 class="sec-title h3 theme-color fw-semibold"><?php the_title(); ?></h2>
                        </div>
                        <?php the_content(); ?>
                        <a href="<?php the_permalink(); ?>" class="th-btn">Explore Details<i class="fas fa-arrow-right ms-2"></i></a>
                    </div>
                    <div class="col-xl-6">
                        <div class="text-center text-xl-start tilt-active">
                            <?php
                            $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                            $fallback_image = get_template_directory_uri() . '/assets/img/ab_us.jpg';
                            ?>
                            <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="about image" class="br-10">
                        </div>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</section>
<?php endif; wp_reset_postdata(); ?>
