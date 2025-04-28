<?php
/**
 * Template Name: Course Details
 *
 * @package TTI-Bhutan
 * @subpackage TTI-Bhutan
 * @since TTI-Bhutan 1.0
 */
?>
<?php get_header(); ?>

<?php include('inc/page-header.php'); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<section class="space-top space-extra2-bottom">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-xxl-9 col-lg-8">
                <div class="course-single">
                    <div class="course-single-top">
                        <div class="course-img">
                             <?php
                                $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'event-box');
                                $fallback_image = get_template_directory_uri() . '/assets/img/course/course-details.png';
                            ?>
                            <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="<?php the_title(); ?>">
                            <?php if (get_field('durations')): ?>
                            <span class="tag"><i class="fas fa-clock"></i><?php echo esc_html( get_field('durations') ); ?></span>
                            <?php endif ?>
                            <!-- <span class="tag bg-theme">BEST SELLER</span> -->
                        </div>
                        <h2 class="course-title"><?php the_title(); ?></h2>
                        <ul class="course-single-meta">
                            <?php if (get_field('category')): ?>
                            <li>
                                <span class="meta-title"><i class="fas fa-file"></i> Category </span>
                                <strong><?php echo esc_html( get_field('category') ); ?></strong>
                            </li>
                            <?php endif; ?>
                            <?php if (get_field('durations')): ?>
                            <li>
                                <span class="meta-title"><i class="fas fa-clock"></i> Duration: </span>
                                <strong><?php echo esc_html( get_field('durations') ); ?></strong>
                            </li>
                            <?php endif; ?>
                            <?php if (get_field('bqfc_level')): ?>
                            <li>
                                <span class="meta-title"><i class="fas fa-light fa-globe"></i> BQFC Level: </span>
                                <strong>  <?php echo esc_html( get_field('bqfc_level') ); ?></strong>
                            </li>
                            <?php endif; ?>
                            <?php if (get_field('course_difficulty')): ?>
                            <li>
                                <span class="meta-title"><i class="fas fa-light fa-tag"></i> Course Level: </span>
                                <strong>  <?php echo esc_html( get_field('course_difficulty') ); ?></strong>
                            </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <div class="course-single-bottom">
                        <ul class="nav course-tab" id="courseTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="description-tab" data-bs-toggle="tab" href="#Coursedescription" role="tab" aria-controls="Coursedescription" aria-selected="true"><i class="fa-regular fa-bookmark"></i>Course Description</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="training-outcome-tab" data-bs-toggle="tab" href="#training-outcome" role="tab" aria-controls="training-outcome" aria-selected="false"><i class="fa-regular fa-book"></i>Training Outcome</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="instructor-tab" data-bs-toggle="tab" href="#instructor" role="tab" aria-controls="instructor" aria-selected="false"><i class="fa-regular fa-user"></i>Entry Requirement</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="productTabContent">
                            <div class="tab-pane fade show active" id="Coursedescription" role="tabpanel" aria-labelledby="description-tab">
                                <div class="course-description">
                                    <h5 class="h5">Course Description</h5>
                                    <?php the_content(); ?>
                                    <div class="row mt-25">
                                    <?php if( have_rows('course_duration_hours') ): ?>
                                        <div class="col-md-6">
                                            <div class="wcu-box">
                                                <div class="wcu-box_icon">
                                                    <i class="fas fa-check-circle"></i>
                                                </div>
                                                <div class="wcu-box_details">
                                                    <h3 class="box-title">Course Duration (Hours)</h3>
                                                    <?php while( have_rows('course_duration_hours') ): the_row(); 
                                                        // Get parent value.
                                                        $institute_training_title = get_sub_field('institute_training');
                                                        $ojt_title = get_sub_field('ojt');
                                                    ?>
                                                    <?php if( $institute_training_title ): ?>
                                                    <p class="wcu-box_text mb-1"><strong>Institute Training:</strong> <?php echo $institute_training_title; ?> Hours</p>
                                                    <?php endif; ?>
                                                    <?php if( $ojt_title ): ?>
                                                    <p class="wcu-box_text mb-1"><strong>OJT:</strong> <?php echo $ojt_title; ?> Hours</p>
                                                    <?php endif; ?>
                                                    <?php if( $institute_training_title || $ojt_title ): ?>
                                                    <p class="wcu-box_text"><strong>Total</strong> = <?php echo ($institute_training_title+$ojt_title); ?> Hours</p>
                                                    <?php endif; ?>
                                                    <?php endwhile; ?>
                                                </div>
                                            </div>
                                        </div>
                                        <?php endif; ?>
                                        <?php if( have_rows('trainer_&_trainee_ratio') ): ?>
                                        <div class="col-md-6">
                                            <div class="wcu-box">
                                                <div class="wcu-box_icon">
                                                    <i class="fas fa-check-circle"></i>
                                                </div>
                                                <div class="wcu-box_details">
                                                    <h3 class="box-title mb-4">Trainer & Trainee Ratio</h3>
                                                    <?php while( have_rows('trainer_&_trainee_ratio') ): the_row(); 
                                                        // Get parent value.
                                                        $practical_title = get_sub_field('practical');
                                                        $theory_title = get_sub_field('theory');
                                                    ?>
                                                    <p class="wcu-box_text mb-3"><strong>Practical:</strong> <?php echo $practical_title; ?></p>
                                                    <p class="wcu-box_text"><strong>Theory:</strong> <?php echo $theory_title; ?></p>
                                                    <?php endwhile; ?>
                                                </div>
                                            </div>
                                        </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="training-outcome" role="tabpanel" aria-labelledby="training-outcome-tab">
                                <div class="course-curriculam">
                                    <h5 class="h5 mb-5">Training Outcome</h5>
                                    <?php if( have_rows('training_outcome') ): ?>
                                    <div class="checklist style3 mb-5">
                                        <ul>
                                            <?php while( have_rows('training_outcome') ): the_row(); 
                                                $out_come = get_sub_field('outcome');
                                            ?>
                                            <li><?php echo acf_esc_html( $out_come ); ?></li>
                                            <?php endwhile; ?>
                                        </ul>
                                    </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="instructor" role="tabpanel" aria-labelledby="instructor-tab">
                                <div class="course-instructor">
                                <h5 class="h5 mb-5 mt-5">Training Outcome</h5>
                                    <?php if( have_rows('entry_requirement') ): ?>
                                    <div class="checklist style3 mb-5">
                                        <ul>
                                            <?php while( have_rows('entry_requirement') ): the_row(); 
                                                $requirement = get_sub_field('requirement');
                                            ?>
                                            <li><?php echo acf_esc_html( $requirement ); ?></li>
                                            <?php endwhile; ?>
                                        </ul>
                                    </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php
    global $post;

    $current_post_type = get_post_type( $post );

    // The query arguments
    $course_relatedsargs = array(
        'posts_per_page' => -1,
        'order' => 'DESC',
        'orderby' => 'ID',
        'post_type' => $current_post_type,
        'post__not_in' => array( $post->ID ),
        'post_parent'    => wp_get_post_parent_id($post->ID),
    );
    $course_relatedchildrens = new WP_Query( $course_relatedsargs );
?>
<?php if ( $course_relatedchildrens->have_posts() ) : ?>
<section class="space-bottom">
    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Related Courses</span>
            <h2 class="sec-title">Courses You May Like</h2>
        </div>
        <div class="row slider-shadow th-carousel course-slider-1" data-slide-show="3" data-ml-slide-show="2" data-lg-slide-show="2" data-md-slide-show="2" data-sm-slide-show="1" data-arrows="true">
            <?php while ( $course_relatedchildrens->have_posts() ) : $course_relatedchildrens->the_post(); ?>    
            <div class="col-md-6 col-xl-4">
                <div class="course-box2 style3">
                    <div class="course-img">
                        <?php
                            $courses_image = get_the_post_thumbnail_url($course_relatedchildrens->ID,'width-box');
                        ?>
                        <img src="<?php if ( has_post_thumbnail() ) { echo $courses_image; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/update1/course/course_3_1.jpg <?php } ?>" alt="course">
                        <span class="tag"><?php echo get_the_title( $post->post_parent ); ?></span>
                    </div>
                    <div class="course-content">
                        <h3 class="course-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                        <div class="course-meta">
                            <?php if (get_field('bqfc_level')): ?>
                            <span><i class="fal fa-file"></i>BQFC Level: <?php echo esc_html( get_field('bqfc_level') ); ?></span>
                            <?php endif ?>
                            <?php if (get_field('durations')): ?>
                            <span><i class="fal fa-chart-simple"></i>Durations: <?php echo esc_html( get_field('durations') ); ?></span>
                            <?php endif ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</section>
<?php endif; wp_reset_query(); ?>
<?php endwhile; endif; ?>
<?php get_footer(); ?>