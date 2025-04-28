<?php
/**
 * Template Name: Course Child
 *
 * @package TTI-Bhutan
 * @subpackage TTI-Bhutan
 * @since TTI-Bhutan 1.0
 */
?>
<?php get_header(); ?>

<?php include('inc/page-header.php'); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php
    $childssargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1 ,
        // 'post_parent__in'    => array(127, 106, ),
        // 'post__in' => array( 24 ),
        'post_parent'    => $post->ID,
        'post_status'       => 'publish',
        'order'          => 'DESC',
        'orderby'        => 'menu_order'
        );
    $childschildrens = new WP_Query( $childssargs );
?>
<?php if ( $childschildrens->have_posts() ) : ?>
<section class="space-top space-extra-bottom">
    <div class="container">
        <div class="row gy-30 justify-content-center align-items-center">
            <?php while ( $childschildrens->have_posts() ) : $childschildrens->the_post(); ?>
            <div class="col-md-6 col-xl-6">
                <div class="course-box2 style3">
                    <a href="<?php the_permalink(); ?>">
                        <div class="course-img">
                            <?php
                                $courses_image = get_the_post_thumbnail_url($childschildrens->ID,'big-blog-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $courses_image; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/update1/course/course_3_1.jpg <?php } ?>" alt="course">
                            <span class="tag"><?php echo get_the_title( $post->post_parent ); ?></span>
                        </div>
                    </a>
                    <div class="course-content">
                        <h3 class="course-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                        <div class="course-meta">
                            <?php 
                            // var_dump($post->ID);
                                $courses_pages = get_pages("title_li=&child_of=" . $post->ID . "&echo=0");
                                $courses_count = count($courses_pages);
                            ?>
                            <?php if ($courses_pages): ?>
                                <span><i class="fal fa-file"></i><?php echo $courses_count; ?> Course(s)</span>
                            <?php endif; ?>
                            <?php if (get_field('type')): ?>
                            <span><i class="fal fa-eye"></i>Type: <?php echo esc_html( get_field('type') ); ?></span>
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