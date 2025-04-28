<?php
/**
 * Template Name: Downloads List
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
<div class="th-cart-wrapper mt-50 mb-50">
    <div class="container">
        <div class="row gx-30 justify-content-center align-items-center">
            <div class="col-xl-10 col-md-10 col-sm-12">
                <table class="cart_table">
                    <thead>
                        <tr>
                            <th class="cart-col-productname">TITLE</th>
                            <th class="cart-col-remove text-end">LINK</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while ( $childschildrens->have_posts() ) : $childschildrens->the_post(); ?>
                        <tr class="cart_item">
                            <?php
                            $file = get_field('download_files');
                            // var_dump($file);
                            if( $file ): ?>
                            <td data-title="Title">
                                <a class="cart-productname" target="_blank" href="<?php echo $file['url']; ?>"><?php the_title(); ?></a>
                            </td>
                            <td data-title="Link" class="text-end">
                                <a href="<?php echo $file['url']; ?>" target="_blank" class="btn btn-primary"><i class="fal fa-download"></i> Download</a>
                            </td>
                            <?php endif; ?>
                        </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
        
    </div>
</div>
<?php endif; wp_reset_query(); ?>

<?php endwhile; endif; ?>
<?php get_footer(); ?>