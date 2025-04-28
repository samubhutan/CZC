<?php
    $home_sister_institutes_args = array(
        'post_type'      => 'page',
        'posts_per_page' => -1,
        // 'post_parent__in'    => array(127, 106, ),
        // 'post__in' => array( 24 ),
        'post_parent'    => 100,
        'post_status'       => 'publish',
        'order'          => 'ASC',
        'orderby'        => 'menu_order'
    );
    $home_sister_institutes_childrens = new WP_Query( $home_sister_institutes_args );
?>
<?php if ( $home_sister_institutes_childrens->have_posts() ) : ?>
<div class="client-area-3">
    <div class="container">
        <div class="row justify-content-center th-carousel" data-slide-show="8" data-md-slide-show="6">
            <?php while ( $home_sister_institutes_childrens->have_posts() ) : $home_sister_institutes_childrens->the_post(); ?>
            <div class="col-lg-12">
                <a href="<?php the_permalink(); ?>" target="_blank" class="client-thumb">
                    <?php
                        $sister_institutes_thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'medium');
                        $sister_institutes_fallback_image = get_template_directory_uri() . '/assets/img/client/cilent_1_1.png';
                    ?>
                    <img src="<?php echo $sister_institutes_thumbnail_url ?: $sister_institutes_fallback_image; ?>" alt="<?php the_title(); ?> Logo">
                </a>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>
<?php endif; wp_reset_query(); ?>