<ul>
    <!-- <li>
        <a href="<?php bloginfo('url'); ?>"><i class="fas fa-building"></i> Contact</a>
    </li> -->
    <li class="menu-item-has-children">
        <a href="<?php bloginfo('url'); ?>/about-us/"> <i class="fas fa-building"></i> About</a>
        <ul class="sub-menu">
            <?php
                $header_departments_args = array(
                    'post_type'      => 'page',
                    'posts_per_page' => -1,
                    // 'post_parent__in'    => array(127, 106, ),
                    // 'post__in' => array( 24 ),
                    'post_parent'    => 6,
                    'post_status'       => 'publish',
                    'order'          => 'ASC',
                    'orderby'        => 'menu_order'
                );
                $header_departments_childrens = new WP_Query( $header_departments_args );
            ?>
            <?php if ( $header_departments_childrens->have_posts() ) : ?>
            <li class="menu-item-has-children">
                <a href="#">Department</a>
                <ul class="sub-menu">
                    <?php while ( $header_departments_childrens->have_posts() ) : $header_departments_childrens->the_post(); ?>
                    <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
                    <?php endwhile; ?>
                </ul>
            </li>
            <?php endif; wp_reset_query(); ?>            
            <li><a href="<?php bloginfo('url'); ?>/about-us">Brief History</a></li>
            <li><a href="<?php bloginfo('url'); ?>/about-us">Mission & Vision</a></li>
            <li><a href="<?php bloginfo('url'); ?>/about-us">Core Values</a></li>
            <li><a href="<?php bloginfo('url'); ?>/about-us/faculty-profile/">Faculty Profile</a></li>
        </ul>
    </li>
    <li>
        <a href="<?php bloginfo('url'); ?>"><i class="fas fa-book"></i> Courses</a>
    </li>
    <li class="menu-item-has-children">
        <a href="#"><i class="fas fa-user-graduate"></i> Student Services</a>
        <ul class="sub-menu">
            <li><a href="<?php bloginfo('url'); ?>">LMS</a></li>
            <li><a href="<?php bloginfo('url'); ?>">Admission</a></li>
            <li><a href="<?php bloginfo('url'); ?>">Accommodation</a></li>
            <li><a href="<?php bloginfo('url'); ?>">Campus Life</a></li>
            <li><a href="<?php bloginfo('url'); ?>">International Students</a></li>
        </ul>
    </li>
    <li class="menu-item-has-children">
        <a href="#"><i class="fas fa-bell"></i> Announcements</a>
        <ul class="sub-menu">
            <li><a href="<?php bloginfo('url'); ?>">Announcements</a></li>
            <li><a href="<?php bloginfo('url'); ?>">News</a></li>
            <li><a href="<?php bloginfo('url'); ?>">Events</a></li>
            <li><a href="<?php bloginfo('url'); ?>">Vacancy</a></li>
        </ul>
    </li>
    <li class="menu-item-has-children">
        <a href="#">
            <i class="fas fa-tasks"></i>
            Downloads
        </a>
        <ul class="sub-menu">
            <li><a href="<?php bloginfo('url'); ?>">Forms</a></li>
            <li><a href="<?php bloginfo('url'); ?>">Publications</a></li>
        </ul>
    </li>
    <li>
        <!-- <a href="<?php bloginfo('url'); ?>"><i class="fas fa-phone-rotary"></i> Contact</a> -->
    </li>
</ul>