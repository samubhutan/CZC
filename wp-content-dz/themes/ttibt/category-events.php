<?php get_header(); ?>

<?php include('inc/page-header-archive.php'); ?>

<section class="space-top space-extra-bottom">
    <div class="container">
        <div class="row gy-30 justify-content-center align-items-center">
            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
            <div class="col-md-6 col-xl-6">
                <div class="course-box2 style3">
                    <a href="<?php the_permalink(); ?>">
                        <div class="course-img">
                            <?php
                                $courses_image = get_the_post_thumbnail_url($post->ID,'big-blog-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $courses_image; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/update1/course/course_3_1.jpg <?php } ?>" alt="course">
                        </div>
                    </a>
                    <div class="course-content">
                        <h3 class="course-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                    </div>
                </div>
            </div>
            <?php endwhile; endif; ?>
        </div>
    </div>
</section>

<?php get_footer(); ?>