<?php get_header(); ?>

<?php include('inc/page-header-archive.php'); ?>

<section class="">
    <div class="container">
        <div class="error-page">
            <div class="error-content">
                <div class="error-img">
                    <img src="<?php bloginfo('template_directory'); ?>/assets/img/normal/error.svg" alt="404 image">
                </div>
                <h2 class="error-title"><span class="text-theme">OooPs!</span> Page Not Found</h2>
                <p class="error-text">Oops! The page you are looking for does not exist. It might have been moved or deleted.</p>
                <a href="<?php bloginfo('url'); ?>" class="th-btn">Back To Home </a>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>