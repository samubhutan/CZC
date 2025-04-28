<?php get_header(); ?>

<?php include('inc/page-header.php'); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<section class="th-blog-wrapper blog-details space-top space-extra2-bottom">
    <div class="container">
        <div class="row gx-30">
            <div class="col-xxl-8 col-lg-7">
                <div class="th-blog blog-single">
                    <div class="blog-content">
                        <h2 class="blog-title"><?php the_title(); ?></h2>
                        <div class="blog-meta">
                            <a class="author" href="#"><i class="far fa-user"></i>by <?php the_author(); ?></a>
                            <a href="#"><i class="fa-light fa-calendar-days"></i><?php echo the_time('F, jS,Y') ?></a>
                            <hr>
                        </div>
                        <?php the_content(); ?>
                    </div>
                    <div class="share-links clearfix ">
                        <div class="row justify-content-between">
                            <div class="col-md-auto text-xl-end">
                                <span class="share-links-title">Share:</span>
                                <ul class="social-links">
                                    <li><a href="https://facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="https://linkedin.com/" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="https://instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                </ul><!-- End Social Share -->
                            </div><!-- Share Links Area end -->
                        </div>
                    </div>
                </div>
            </div>
            <?php get_sidebar(); ?>
        </div>
    </div>
</section>

<?php endwhile; endif; ?>
<?php get_footer(); ?>