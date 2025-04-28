<?php
    $home_departments_args = array(
        'post_type'      => 'page',
        'posts_per_page' => -1,
        // 'post_parent__in'    => array(127, 106, ),
        // 'post__in' => array( 24 ),
        'post_parent'    => 6,
        'post_status'       => 'publish',
        'order'          => 'ASC',
        'orderby'        => 'menu_order'
    );
    $home_departments_childrens = new WP_Query( $home_departments_args );
?>
<?php if ( $home_departments_childrens->have_posts() ) : ?>

<section class="cta-area-2 position-relative space-bottom">
    <div class="cta-bg-img" data-bg-src="<?php bloginfo('template_directory'); ?>/assets/img/default_one.jpg">
    </div>
    <div class="container">
        <div class="title-area text-center mb-50">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Popular Courses</span>
            <h2 class="sec-title text-white">Our Courses</h2>
        </div>
        <div class="course-tab-1 tab-menu1 th-carousel row" data-slide-show="3" data-ml-slide-show="3" data-lg-slide-show="3" data-md-slide-show="2" data-sm-slide-show="1" data-arrows="true" id="courseTab-1" data-asnavfor="#course-tab-content">
            <div class="col-lg-3">
                <a class="tab-btn">
                    <span class="icon"><img src="<?php bloginfo('template_directory'); ?>/assets/img/icon/course-tab-icon1.svg" alt="img"></span>
                    <span class="details">
                        <span class="box-title">NC 2</span>
                        <span class="text">286 Courses</span>
                    </span>
                </a>
            </div>
            <div class="col-lg-3">
                <a class="tab-btn">
                    <span class="icon"><img src="<?php bloginfo('template_directory'); ?>/assets/img/icon/course-tab-icon2.svg" alt="img"></span>
                    <span class="details">
                        <span class="box-title">NC 3</span>
                        <span class="text">286 Courses</span>
                    </span>
                </a>
            </div>
            <div class="col-lg-3">
                <a class="tab-btn">
                    <span class="icon"><img src="<?php bloginfo('template_directory'); ?>/assets/img/icon/course-tab-icon1.svg" alt="img"></span>
                    <span class="details">
                        <span class="box-title">Diploma</span>
                        <span class="text">140 Courses</span>
                    </span>
                </a>
            </div>
        </div>
        <div class="th-carousel" data-fade="true" id="course-tab-content" data-adaptive-height="true">
            <div>
                <div class="row gy-4 mb-60">
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_1.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">Education Software and PHP
                                        and JS System Script</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 8</span>
                                    <span><i class="fal fa-user"></i>Students 60+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Max Alexix</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_2.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">Learn Figma – UI/UX Design
                                        Essential Training</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 9</span>
                                    <span><i class="fal fa-user"></i>Students 50+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_3.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 04 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">Advanced Android 12 & Kotlin
                                        Development Course</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 7</span>
                                    <span><i class="fal fa-user"></i>Students 30+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Max Alexix</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_4.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">IT Statistics Data Science and
                                        Business Analysis</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 10</span>
                                    <span><i class="fal fa-user"></i>Students 20+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <div class="row gy-4 mb-60">
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_2.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">Learn Figma – UI/UX Design
                                        Essential Training</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 8</span>
                                    <span><i class="fal fa-user"></i>Students 60+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_1.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">Education Software and PHP
                                        and JS System Script</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 9</span>
                                    <span><i class="fal fa-user"></i>Students 50+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Max Alexix</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_4.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 04 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">IT Statistics Data Science and
                                        Business Analysis</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 7</span>
                                    <span><i class="fal fa-user"></i>Students 30+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_3.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">Advanced Android 12 & Kotlin
                                        Development Course</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 10</span>
                                    <span><i class="fal fa-user"></i>Students 20+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Max Alexix</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <div class="row gy-4 mb-60">
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_4.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">Advanced Android 12 & Kotlin
                                        Development Course</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 8</span>
                                    <span><i class="fal fa-user"></i>Students 60+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xxl-3 col-lg-4">
                        <div class="course-box">
                            <div class="course-img">
                                <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/course_1_3.png" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>(4.7)
                                </div>
                                <h3 class="course-title"><a href="course-details.html">IT Statistics Data Science and
                                        Business Analysis</a></h3>
                                <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 9</span>
                                    <span><i class="fal fa-user"></i>Students 50+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="<?php bloginfo('template_directory'); ?>/assets/img/course/author.png" alt="author">
                                        <a href="course.html" class="author-name">Max Alexix</a>
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center">
            <a href="course.html" class="th-btn">View All Courses<i class="fa-solid fa-arrow-right ms-2"></i></a>
        </div>
    </div>
</section>
<?php endif; wp_reset_query(); ?>