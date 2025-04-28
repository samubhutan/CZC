<?php
    $home_partners_args = array(
        'post_type'      => 'page',
        'posts_per_page' => -1,
        // 'post_parent__in'    => array(127, 106, ),
        // 'post__in' => array( 24 ),
        'post_parent'    => 100,
        'post_status'       => 'publish',
        'order'          => 'ASC',
        'orderby'        => 'menu_order'
    );
    $home_partners_childrens = new WP_Query( $home_partners_args );
?>
<?php if ( $home_partners_childrens->have_posts() ) : ?>
<section class="bg-smoke service-sec space">
    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title"><i class="fal fa-book me-2"></i> OUR PARTNERS</span>
            <h2 class="sec-title">Our Trusted Partners</h2>
        </div>
    </div>
    <div class="client-area-3">
        <div class="container">
            <div class="row justify-content-center th-carousel" data-slide-show="8" data-md-slide-show="6">
                <?php while ( $home_partners_childrens->have_posts() ) : $home_partners_childrens->the_post(); ?>
                <div class="col-lg-12">
                    <a href="<?php the_permalink(); ?>" target="_blank" class="client-thumb">
                        <?php
                            $partners_thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'medium');
                            $partners_fallback_image = get_template_directory_uri() . '/assets/img/client/cilent_1_1.png';
                        ?>
                        <img src="<?php echo $partners_thumbnail_url ?: $partners_fallback_image; ?>" alt="<?php the_title(); ?> Logo">
                    </a>
                </div>
                <?php endwhile; ?>
            </div>
        </div>
    </div>
</section>
<?php endif; wp_reset_query(); ?>