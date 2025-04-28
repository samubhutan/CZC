<?php
$page_id = 26; // Replace with your actual page ID
$page = get_post($page_id);

if ($page) {
    $title = get_the_title($page);
    $content = apply_filters('the_content', $page->post_content);
    $featured_img = get_the_post_thumbnail_url($page_id, 'full');
?>
<div class="space mt-5" id="about-sec">
    <div class="container">
        <div class="row">
            <div class="col-xl-6">
                <div class="img-box10">
                    <div class="text-center text-xl-start tilt-active">
                        <?php
                            $thumbnail_url = get_the_post_thumbnail_url($page_id, 'about-box');
                            $fallback_image = get_template_directory_uri() . '/assets/img/ab_us.jpg';
                        ?>
                        <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="<?php echo esc_html($title); ?> image" class="br-10">
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="title-area mb-35">
                    <span class="sub-title">More About Us</span>
                    <h2 class="sec-title fw-semibold"><?php bloginfo('name'); ?></h2>
                </div>
                <?php echo $content; ?>
                <a href="<?php echo get_permalink($page); ?>" class="th-btn">Learn More<i class="fas fa-arrow-right ms-2"></i></a>
                <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="video-link popup-video pl-50"><span class="play-btn"><i class="fas fa-play"></i></span><span class="btn-text"></span></a>
            </div>
        </div>
    </div>
</div>
<?php } ?>