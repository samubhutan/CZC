<div class="col-xxl-4 col-lg-5">
    <aside class="sidebar-area">
        <div class="widget widget_search  ">
            <?php $search_terms = isset($_GET['s']) ? esc_attr($_GET['s']) : ''; ?>
            <form action="<?php echo esc_url(home_url('/')); ?>" class="search-form">
                <input type="text" name="s" value="<?php echo $search_terms; ?>" placeholder="Enter your keywords..." required>
                <button type="submit"><i class="far fa-search"></i></button>
            </form>
        </div>
        <?php
            $side_departments_args = array(
                'post_type'      => 'page',
                'posts_per_page' => -1,
                // 'post_parent__in'    => array(127, 106, ),
                // 'post__in' => array( 24 ),
                'post_parent'    => 6,
                'post_status'       => 'publish',
                'order'          => 'ASC',
                'orderby'        => 'menu_order'
            );
            $side_departments_childrens = new WP_Query( $side_departments_args );
        ?>
        <?php if ( $side_departments_childrens->have_posts() ) : ?>
        <div class="widget widget_categories  ">
            <h3 class="widget_title">Departments</h3>
                <ul>
                    <?php while ( $side_departments_childrens->have_posts() ) : $side_departments_childrens->the_post(); ?>
                    <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
                    <?php endwhile; ?>
                </ul>
            </li>
        </div>
        <?php endif; wp_reset_query(); ?>
        <div class="widget widget_categories">
            <h3 class="widget_title">Categories</h3>
            <ul>
                <?php
                    $args = array(
                        'orderby' => 'name',
                        'order'   => 'ASC',
                        'exclude' => 1 // Exclude 'Uncategorized' (usually ID 1)
                    );
                    $categories = get_categories($args);
                    foreach ( $categories as $category ) {
                        echo '<li><a href="' . get_category_link( $category->term_id ) . '"> ' . esc_html($category->name) . '</a><span>(' . $category->count . ')</span></li>';
                    }
                ?>
            </ul>
        </div>

        <?php if ( is_active_sidebar('sidebar-archive') ) : ?>
            <div class="widget widget_categories  ">
            <h3 class="widget_title">Our Archives</h3>
            <?php dynamic_sidebar('sidebar-archive') ?>
            </div>
        <?php endif; ?>
        <div class="widget widget_tag_cloud  ">
            <h3 class="widget_title">Never Miss News</h3>
            <div class="th-social">
                <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.twitter.com/"><i class="fab fa-twitter"></i></a>
                <a href="https://www.linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                <a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a>
                <a href="https://www.skype.com/"><i class="fab fa-skype"></i></a>
            </div>
        </div>
    </aside>
</div>