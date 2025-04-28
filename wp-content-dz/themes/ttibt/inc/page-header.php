<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<?php $header_url = get_the_post_thumbnail_url(get_the_ID(), 'featured-box') ?: get_template_directory_uri() . '/assets/img/default_one.jpg'; ?>

<div class="breadcumb-wrapper " data-bg-src="<?php echo esc_url($header_url); ?>" data-overlay="title" data-opacity="8">
    <div class="container">
        <div class="breadcumb-content text-center">
            <h1 class="breadcumb-title"><?php wp_title(''); ?></h1>
            <?php custom_breadcrumb(); ?>
        </div>
    </div>
</div>
<?php endwhile; endif; ?>