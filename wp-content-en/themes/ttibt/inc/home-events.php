<?php
$slider_args = array(
    'post_type'         => 'post',
    'category_name'     => 'events',
    'posts_per_page'    => 5,
    'post_status'       => 'publish',
    'order'             => 'DESC',
);

$slider_query = new WP_Query($slider_args);
?>

<?php if ($slider_query->have_posts()) : ?>
<section class="space bg-smoke overflow-hidden" id="team-sec">
    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Our Events</span>
            <h2 class="sec-title">Don't miss Our Events</h2>
        </div>
    </div>
    <div class="course-sec space-bottom">
        <div class="bg-shape gr-bg1"></div>
        <div class="container">
            <?php while ($slider_query->have_posts()) : $slider_query->the_post(); ?>
            <div class="course-grid2">
                <div class="course-img">
                    <?php
                        $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'event-box');
                        $fallback_image = get_template_directory_uri() . '/assets/img/update1/course/course_5_2.jpg';
                    ?>
                    <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="<?php the_title(); ?>">
                    <!-- <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="play-btn popup-video"><i class="fas fa-play"></i></a> -->
                </div>
                <div class="course-content">
                    <h3 class="course-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                    <?php if (get_field('organizer')): ?>
                    <a href="<?php the_permalink(); ?>" class="course-author">by <?php echo esc_html( get_field('organizer') ); ?></a>
                    <?php endif ?>
                    <div class="course-meta">
                    <?php if (get_field('date')): ?>
                        <div class="meta-box">
                            <i class="fas fa-file"></i>
                            <div>
                                <span class="text">Date:</span>
                                <span class="number"><?php echo esc_html( get_field('date') ); ?></span>
                            </div>
                        </div>
                        <?php endif ?>
                        <?php if (get_field('venue')): ?>
                        <div class="meta-box">
                            <i class="fas fa-user"></i>
                            <div>
                                <span class="text">Venue:</span>
                                <span class="number"><?php echo esc_html( get_field('venue') ); ?></span>
                            </div>
                        </div>
                        <?php endif ?>
                        <?php if (get_field('start_time') || get_field('end_time')): ?>
                        <div class="meta-box">
                            <i class="fas fa-eye"></i>
                            <div>
                                <span class="text">Time:</span>
                                <span class="number"><?php echo esc_html( get_field('start_time') ); ?> - <?php echo esc_html( get_field('end_time') ); ?></span>
                            </div>
                        </div>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
        <div class="shape-mockup" data-bottom="0%" data-right="0%"><img src="<?php bloginfo('template_directory'); ?>/assets/img/update1/shape/line_5.png" alt="shapes"></div>
    </div>
</section>
<?php endif; wp_reset_postdata(); ?>