<?php
// Set parent page(s)
$course_parents = array(69);

// Define course levels
$course_levels = array(
    'nc2'     => array('title' => 'NC 2', 'icon' => 'course-tab-icon1.svg'),
    'nc3'     => array('title' => 'NC 3', 'icon' => 'course-tab-icon2.svg'),
    'diploma' => array('title' => 'Diploma', 'icon' => 'course-tab-icon3.svg'),
);
?>

<section class="cta-area-2 position-relative space-bottom">
    <div class="cta-bg-img" data-bg-src="<?php bloginfo('template_directory'); ?>/assets/img/default_one.jpg"></div>
    <div class="container">
        <div class="title-area text-center mb-50">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Our Courses</span>
            <h2 class="sec-title text-white">Explore Courses</h2>
        </div>

        <!-- Tabs -->
        <div class="course-tab-1 tab-menu1 th-carousel row" 
            data-slide-show="3" data-ml-slide-show="3" data-lg-slide-show="3" 
            data-md-slide-show="2" data-sm-slide-show="1" data-arrows="true" 
            id="courseTab-1" data-asnavfor="#course-tab-content">
            
            <?php foreach ($course_levels as $level_key => $level_data): 
                $args = array(
                    'post_type'      => 'page',
                    'posts_per_page' => 4,
                    'post_parent__in'=> $course_parents,
                    'post_status'    => 'publish',
                    'meta_query'     => array(
                        array(
                            'key'     => 'bqfc_level',
                            'value'   => $level_key,
                            'compare' => '='
                        )
                    )
                );
                $level_query = new WP_Query($args);
                if ($level_query->have_posts()) : ?>
                    <div class="col-lg-3">
                        <a class="tab-btn">
                            <span class="icon">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/icon/<?php echo esc_attr($level_data['icon']); ?>" alt="icon">
                            </span>
                            <span class="details">
                                <span class="box-title"><?php echo esc_html($level_data['title']); ?></span>
                                <span class="text"><?php echo $level_query->found_posts; ?> Courses</span>
                            </span>
                        </a>
                    </div>
                <?php endif; wp_reset_postdata(); ?>
            <?php endforeach; ?>
        </div>

        <!-- Course Content Tabs -->
        <div class="th-carousel" data-fade="true" id="course-tab-content" data-adaptive-height="true">
            <?php foreach ($course_levels as $level_key => $level_data): 
                $args = array(
                    'post_type'      => 'page',
                    'posts_per_page' => -1,
                    'post_parent__in'=> $course_parents,
                    'post_status'    => 'publish',
                    'orderby'        => 'title',
                    'order'          => 'ASC',
                    'meta_query'     => array(
                        array(
                            'key'     => 'bqfc_level',
                            'value'   => $level_key,
                            'compare' => '='
                        )
                    )
                );
                $level_query = new WP_Query($args);
                if ($level_query->have_posts()): ?>
                    <div>
                        <div class="row gy-4 mb-60">
                            <?php while ($level_query->have_posts()): $level_query->the_post(); ?>
                                <div class="col-md-6 col-xxl-3 col-lg-4">
                                    <div class="course-box">
                                        <div class="course-img">
                                            <?php $thumbnail = get_the_post_thumbnail_url(get_the_ID(), 'medium'); ?>
                                            <img src="<?php echo $thumbnail ? esc_url($thumbnail) : get_template_directory_uri() . '/assets/img/update1/course/course_3_1.jpg'; ?>" alt="course">
                                            <span class="tag"><?php echo get_the_title(wp_get_post_parent_id(get_the_ID())); ?></span>
                                        </div>
                                        <div class="course-content">
                                            <h3 class="course-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                            <div class="course-meta">
                                                <?php if (get_field('bqfc_level')): ?>
                                                    <span><i class="fal fa-file"></i>BQFC Level: <strong class="text-uppercase"><?php echo esc_html(get_field('bqfc_level')); ?></strong></span>
                                                <?php endif; ?>
                                                <?php if (get_field('category')): ?>
                                                    <span><i class="fal fa-chart-simple"></i>Category: <?php echo esc_html(get_field('category')); ?></span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endwhile; ?>
                        </div>
                    </div>
                <?php endif; wp_reset_postdata(); ?>
            <?php endforeach; ?>
        </div>

        <div class="text-center">
            <a href="<?php echo site_url('/courses'); ?>" class="th-btn">View All Courses<i class="fa-solid fa-arrow-right ms-2"></i></a>
        </div>
    </div>
</section>
