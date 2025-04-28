<?php
/**
 * Template Name: Staff Listing
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
    $team_principal_sargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1,
        'post_parent'    => $post->ID,
        'post_status'    => 'publish',
        'tax_query'      => array(
            array(
                'taxonomy' => 'category', // Use the taxonomy for categories
                'field'    => 'slug',    // Check by category slug
                'terms'    => array('faculty_profile', 'principal'), // Slugs of the categories
            ),
        ),
    );

    $team_principal_childrens = new WP_Query($team_principal_sargs);
?>
<?php if ($team_principal_childrens->have_posts()) : ?>
<div class="team-area overflow-hidden space bg-smoke">
    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Our Principal</span>
            <h2 class="sec-title">PRINCIPAL</h2>
        </div>
        <div class="row justify-content-center align-items-center gy-4">
            <?php while ($team_principal_childrens->have_posts()) : $team_principal_childrens->the_post(); ?>
            <!-- Single Item -->
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337" viewBox="0 0 327 337" fill="none">
                            <path d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z" fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                        <?php
                                $staff_image = get_the_post_thumbnail_url($team_principal_childrens->ID,'staff-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $staff_image; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/images.jpg <?php } ?>" alt="<?php the_title(); ?> Team">
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="#"><?php the_title(); ?></a></h3>
                        <?php if (get_field('designation')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('designation') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('email')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('email') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('number')): ?>
                            <span class="team-desig"><?php echo esc_html( get_field('number') ); ?></span>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>
<?php endif; wp_reset_postdata(); ?>

<?php
    $team_automobiles_sargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1,
        'post_parent'    => $post->ID, // Fetch child pages of the current page
        'post_status'    => 'publish',
        'tax_query'      => array(
            array(
                'taxonomy' => 'category', // The taxonomy for categories
                'field'    => 'slug',    // Check by category slug
                'terms'    => array('faculty_profile', 'automobile'), // Slugs of the categories to filter
            ),
        ),
    );

    $team_automobiles_childrens = new WP_Query($team_automobiles_sargs);
?>
<?php if ($team_automobiles_childrens->have_posts()) : ?>
<div class="team-area overflow-hidden space">
    <div class="container">
        <div class="title-area text-center">
            <h2 class="sec-title">AUTOMOBILES</h2>
        </div>
        <div class="row justify-content-center align-items-center gy-4">
            <?php while ($team_automobiles_childrens->have_posts()) : $team_automobiles_childrens->the_post(); ?>
            <!-- Single Item -->
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337" viewBox="0 0 327 337" fill="none">
                            <path d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z" fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                        <?php
                                $automobiles_staff_image = get_the_post_thumbnail_url($team_automobiles_childrens->ID,'staff-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $automobiles_staff_image; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/images.jpg <?php } ?>" alt="<?php the_title(); ?> Team">
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="#"><?php the_title(); ?></a></h3>
                        <?php if (get_field('designation')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('designation') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('email')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('email') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('number')): ?>
                            <span class="team-desig"><?php echo esc_html( get_field('number') ); ?></span>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>
<?php endif; wp_reset_postdata(); ?>

<?php
    $team_rac_sargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1 ,
        // 'post_parent__in'    => array(202, 204, 205 ),
        // 'post__in' => array( 24 ),
        // 'post_parent'    => $post->ID,
        'post_parent'    => 186,
        'post_status'       => 'publish',
        // 'order'          => 'DESC',
        // 'orderby'        => 'menu_order'
        );
    $team_rac_childrens = new WP_Query( $team_rac_sargs );
?>
<?php if ( $team_rac_childrens->have_posts() ) :   ?>
<div class="team-area overflow-hidden space bg-smoke">
    <div class="container">
        <div class="title-area text-center">
            <!-- <span class="sub-title"><i class="fal fa-book me-2"></i> Our Principal</span> -->
            <h2 class="sec-title">RAC</h2>
        </div>
        <div class="row justify-content-center align-items-center gy-4">
            <?php while ( $team_rac_childrens->have_posts() ) : $team_rac_childrens->the_post(); ?>
            <!-- Single Item -->
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337" viewBox="0 0 327 337" fill="none">
                            <path d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z" fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                        <?php
                                $team_rac = get_the_post_thumbnail_url($team_rac_childrens->ID,'staff-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $team_rac; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/images.jpg <?php } ?>" alt="<?php the_title(); ?> Team">
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="#"><?php the_title(); ?></a></h3>
                        <?php if (get_field('designation')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('designation') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('email')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('email') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('number')): ?>
                            <span class="team-desig"><?php echo esc_html( get_field('number') ); ?></span>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>
<?php endif; wp_reset_query(); ?>
<?php
    $team_hvac_sargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1 ,
        // 'post_parent__in'    => array(202, 204, 205 ),
        // 'post__in' => array( 24 ),
        // 'post_parent'    => $post->ID,
        'post_parent'    => 186,
        'post_status'       => 'publish',
        // 'order'          => 'DESC',
        // 'orderby'        => 'menu_order'
        );
    $team_hvac_childrens = new WP_Query( $team_hvac_sargs );
?>
<?php if ( $team_hvac_childrens->have_posts() ) :   ?>
<div class="team-area overflow-hidden space bg-smoke">
    <div class="container">
        <div class="title-area text-center">
            <!-- <span class="sub-title"><i class="fal fa-book me-2"></i> Our Principal</span> -->
            <h2 class="sec-title">HVAC</h2>
        </div>
        <div class="row justify-content-center align-items-center gy-4">
            <?php while ( $team_hvac_childrens->have_posts() ) : $team_hvac_childrens->the_post(); ?>
            <!-- Single Item -->
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337" viewBox="0 0 327 337" fill="none">
                            <path d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z" fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                        <?php
                                $team_hvac = get_the_post_thumbnail_url($team_hvac_childrens->ID,'staff-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $team_hvac; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/images.jpg <?php } ?>" alt="<?php the_title(); ?> Team">
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="#"><?php the_title(); ?></a></h3>
                        <?php if (get_field('designation')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('designation') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('email')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('email') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('number')): ?>
                            <span class="team-desig"><?php echo esc_html( get_field('number') ); ?></span>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>
<?php endif; wp_reset_query(); ?>
<?php
    $team_dm_sargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1 ,
        // 'post_parent__in'    => array(202, 204, 205 ),
        // 'post__in' => array( 24 ),
        // 'post_parent'    => $post->ID,
        'post_parent'    => 186,
        'post_status'       => 'publish',
        // 'order'          => 'DESC',
        // 'orderby'        => 'menu_order'
        );
    $team_dm_childrens = new WP_Query( $team_dm_sargs );
?>
<?php if ( $team_dm_childrens->have_posts() ) :   ?>
<div class="team-area overflow-hidden space bg-smoke">
    <div class="container">
        <div class="title-area text-center">
            <!-- <span class="sub-title"><i class="fal fa-book me-2"></i> Our Principal</span> -->
            <h2 class="sec-title">Digital Marketing</h2>
        </div>
        <div class="row justify-content-center align-items-center gy-4">
            <?php while ( $team_dm_childrens->have_posts() ) : $team_dm_childrens->the_post(); ?>
            <!-- Single Item -->
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337" viewBox="0 0 327 337" fill="none">
                            <path d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z" fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                        <?php
                                $team_dm = get_the_post_thumbnail_url($team_dm_childrens->ID,'staff-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $team_dm; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/images.jpg <?php } ?>" alt="<?php the_title(); ?> Team">
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="#"><?php the_title(); ?></a></h3>
                        <?php if (get_field('designation')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('designation') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('email')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('email') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('number')): ?>
                            <span class="team-desig"><?php echo esc_html( get_field('number') ); ?></span>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>
<?php endif; wp_reset_query(); ?>
<?php
    $team_teachers_sargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1 ,
        // 'post_parent__in'    => array(202, 204, 205 ),
        // 'post__in' => array( 24 ),
        // 'post_parent'    => $post->ID,
        'post_parent'    => 186,
        'post_status'       => 'publish',
        // 'order'          => 'DESC',
        // 'orderby'        => 'menu_order'
        );
    $team_teachers_childrens = new WP_Query( $team_teachers_sargs );
?>
<?php if ( $team_teachers_childrens->have_posts() ) :   ?>
<div class="team-area overflow-hidden space bg-smoke">
    <div class="container">
        <div class="title-area text-center">
            <!-- <span class="sub-title"><i class="fal fa-book me-2"></i> Our Principal</span> -->
            <h2 class="sec-title">Instructors</h2>
        </div>
        <div class="row justify-content-center align-items-center gy-4">
            <?php while ( $team_teachers_childrens->have_posts() ) : $team_teachers_childrens->the_post(); ?>
            <!-- Single Item -->
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337" viewBox="0 0 327 337" fill="none">
                            <path d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z" fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                        <?php
                                $team_teachers = get_the_post_thumbnail_url($team_teachers_childrens->ID,'staff-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $team_teachers; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/images.jpg <?php } ?>" alt="<?php the_title(); ?> Team">
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="#"><?php the_title(); ?></a></h3>
                        <?php if (get_field('designation')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('designation') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('email')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('email') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('number')): ?>
                            <span class="team-desig"><?php echo esc_html( get_field('number') ); ?></span>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>
<?php endif; wp_reset_query(); ?>
<?php
    $team_teachers_sargs = array(
        'post_type'      => 'page',
        'posts_per_page' => -1 ,
        // 'post_parent__in'    => array(202, 204, 205 ),
        // 'post__in' => array( 24 ),
        // 'post_parent'    => $post->ID,
        'post_parent'    => 186,
        'post_status'       => 'publish',
        // 'order'          => 'DESC',
        // 'orderby'        => 'menu_order'
        );
    $team_teachers_childrens = new WP_Query( $team_teachers_sargs );
?>
<?php if ( $team_teachers_childrens->have_posts() ) :   ?>
<div class="team-area overflow-hidden space bg-smoke">
    <div class="container">
        <div class="title-area text-center">
            <!-- <span class="sub-title"><i class="fal fa-book me-2"></i> Our Principal</span> -->
            <h2 class="sec-title">Administrative Department</h2>
        </div>
        <div class="row justify-content-center align-items-center gy-4">
            <?php while ( $team_teachers_childrens->have_posts() ) : $team_teachers_childrens->the_post(); ?>
            <!-- Single Item -->
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337" viewBox="0 0 327 337" fill="none">
                            <path d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z" fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <?php
                                $team_teachers = get_the_post_thumbnail_url($team_teachers_childrens->ID,'staff-box');
                            ?>
                            <img src="<?php if ( has_post_thumbnail() ) { echo $team_teachers; } else { ?> <?php bloginfo('template_directory'); ?>/assets/img/images.jpg <?php } ?>" alt="<?php the_title(); ?> Team">
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="#"><?php the_title(); ?></a></h3>
                        <?php if (get_field('designation')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('designation') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('email')): ?>
                            <span class="team-desig mb-1"><?php echo esc_html( get_field('email') ); ?></span>
                        <?php endif ?>
                        <?php if (get_field('number')): ?>
                            <span class="team-desig"><?php echo esc_html( get_field('number') ); ?></span>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>
<?php endif; wp_reset_query(); ?>
<?php endwhile; endif; ?>
<?php get_footer(); ?>