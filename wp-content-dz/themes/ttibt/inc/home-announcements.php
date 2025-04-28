<section class="space-top space-extra-bottom" id="blog-sec">
    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title">Our Blog Posts</span>
            <h2 class="sec-title fw-semibold">Our Recent Posts</h2>
        </div>
        <div class="row justify-content-center align-items-center">
        <?php
            $home_announcements_args = array(
                'post_type'         => 'post',
                'category_name'     => 'announcements',
                'posts_per_page'    => 1,
                'post_status'       => 'publish',
                'order'             => 'DESC',
            );

            $home_announcements = new WP_Query($home_announcements_args);
            ?>

            <?php if ($home_announcements->have_posts()) : ?>
                <?php while ($home_announcements->have_posts()) : $home_announcements->the_post(); ?>
                    <div class="col-xl-6 mb-30 mb-xl-0">
                        <div class="blog-single style2">
                            <div class="blog-img">
                                <?php
                                $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'big-blog-box');
                                $fallback_image = get_template_directory_uri() . '/assets/img/update1/blog/blog_3_1.jpg';
                                ?>
                                <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="<?php the_title(); ?> blog image">
                            </div>
                            <div class="blog-content">
                                <div class="blog-meta style2">
                                    <a href="<?php the_permalink(); ?>"><i class="fal fa-clock"></i><?php echo the_time('jS F, Y') ?></a>
                                    <a href="<?php echo get_category_link(get_cat_ID('announcements')); ?>"><i class="fal fa-folder"></i> Announcements</a>
                                </div>
                                <h3 class="blog-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                <p><?php echo wp_trim_words( get_the_content(), 20, '...' ); ?></p>
                                <a href="<?php the_permalink(); ?>" class="th-btn style3">Read Details<i class="fas fa-arrow-right ms-2"></i></a>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            <?php endif; wp_reset_postdata(); ?>

            
            <div class="col-xl-6">
            <?php
                $categories = array('career', 'blog', 'tender'); // Define your categories
                foreach ($categories as $category) {
                    $args = array(
                        'post_type'         => 'post',
                        'category_name'     => $category,
                        'posts_per_page'    => 1,
                        'post_status'       => 'publish',
                        'order'             => 'DESC',
                    );

                    $query = new WP_Query($args);
                    if ($query->have_posts()) :
                        while ($query->have_posts()) : $query->the_post();
                ?>
                        <div class="blog-box blog-tti-box m-0">
                            <div class="blog-img">
                                <?php
                                $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'blog-thumb');
                                $fallback_image = get_template_directory_uri() . '/assets/img/update1/blog/blog_3_4.jpg';
                                ?>
                                <img src="<?php echo $thumbnail_url ?: $fallback_image; ?>" alt="<?php the_title(); ?> blog image">
                            </div>
                            <div class="blog-content">
                                <div class="blog-meta style2">
                                    <a href="<?php the_permalink(); ?>"><i class="fal fa-clock"></i><?php echo the_time('F, jS,Y') ?></a>
                                    <a href="<?php echo get_category_link(get_cat_ID($category)); ?>"><i class="fal fa-folder"></i> <?php echo ucfirst($category); ?></a>
                                </div>
                                <h3 class="blog-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                <a href="<?php the_permalink(); ?>" class="link-btn">Read Details<i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                <?php
                        endwhile;
                    endif;
                    wp_reset_postdata();
                }
                ?>


                
            </div>
        </div>
        <div class="text-center mt-5">
            <a class="th-btn" href="<?php bloginfo('url'); ?>">View All Posts <i class="fal fa-arrow-right"></i></a>
        </div>
    </div>
</section>

<section class="overflow-hidden space" id="blog-sec">
        <div class="container">
            <div class="mb-35 text-center text-md-start">
                <div class="row align-items-center justify-content-between">
                    <div class="col-md-8">
                        <div class="title-area mb-md-0">
                            <span class="sub-title"><i class="fal fa-book me-2"></i> Our News & Blogs</span>
                            <h2 class="sec-title">Latests News & Blogs</h2>
                        </div>
                    </div>
                    <div class="col-md-auto">
                        <a href="blog.html" class="th-btn">View All Posts<i class="fa-solid fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            <div class="row slider-shadow th-carousel blog-slider-1" data-slide-show="3" data-lg-slide-show="2" data-md-slide-show="2" data-sm-slide-show="1" data-arrows="true">
                <div class="col-md-6 col-xl-4">
                    <div class="th-blog blog-single style2">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/img/blog/blog-1-1.jpg" alt="Blog Image"></a>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                                <a href="blog.html"><i class="fa-light fa-clock"></i>05 Jun, 2023</a>
                            </div>
                            <h4 class="box-title"><a href="blog-details.html">Educate, Empower, Excel: Discover the Power of Learning!</a>
                            </h4>
                            <a href="blog-details.html" class="link-btn">Read More Details<i class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="th-blog blog-single style2">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/img/blog/blog-1-2.jpg" alt="Blog Image"></a>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                                <a href="blog.html"><i class="fa-light fa-clock"></i>03 Jun, 2023</a>
                            </div>
                            <h4 class="box-title"><a href="blog-details.html">Enrich Your Mind, Envision Your Future: Education for Success</a>
                            </h4>
                            <a href="blog-details.html" class="link-btn">Read More Details<i class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="th-blog blog-single style2">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/img/blog/blog-1-3.jpg" alt="Blog Image"></a>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                                <a href="blog.html"><i class="fa-light fa-clock"></i>10 Jul, 2023</a>
                            </div>
                            <h4 class="box-title"><a href="blog-details.html">University class starting soon while the lovely valley team work</a>
                            </h4>
                            <a href="blog-details.html" class="link-btn">Read More Details<i class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="th-blog blog-single style2">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/img/blog/blog-1-1.jpg" alt="Blog Image"></a>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                                <a href="blog.html"><i class="fa-light fa-clock"></i>02 Apr, 2023</a>
                            </div>
                            <h4 class="box-title"><a href="blog-details.html">Educate, Empower, Excel: Discover the Power of Learning!</a>
                            </h4>
                            <a href="blog-details.html" class="link-btn">Read More Details<i class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="th-blog blog-single style2">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/img/blog/blog-1-2.jpg" alt="Blog Image"></a>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                                <a href="blog.html"><i class="fa-light fa-clock"></i>03 Jun, 2023</a>
                            </div>
                            <h4 class="box-title"><a href="blog-details.html">Enrich Your Mind, Envision Your Future: Education for Success</a>
                            </h4>
                            <a href="blog-details.html" class="link-btn">Read More Details<i class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="th-blog blog-single style2">
                        <div class="blog-img">
                            <a href="blog-details.html"><img src="assets/img/blog/blog-1-3.jpg" alt="Blog Image"></a>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                                <a href="blog.html"><i class="fa-light fa-clock"></i>10 Jul, 2023</a>
                            </div>
                            <h4 class="box-title"><a href="blog-details.html">University class starting soon while the lovely valley team work</a>
                            </h4>
                            <a href="blog-details.html" class="link-btn">Read More Details<i class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>