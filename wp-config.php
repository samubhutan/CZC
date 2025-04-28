<?php
if (!function_exists('getenv_docker')) {
        function getenv_docker($env, $default) {
                if ($fileEnv = getenv($env . '_FILE')) {
                        return rtrim(file_get_contents($fileEnv), "\r\n");
                }
                else if (($val = getenv($env)) !== false) {
                        return $val;
                }
                else {
                        return $default;
                }
        }
}
define( 'DB_NAME', getenv_docker('WORDPRESS_DB_NAME', 'wordpress') );
define( 'DB_USER', getenv_docker('WORDPRESS_DB_USER', 'example username') );
define( 'DB_PASSWORD', getenv_docker('WORDPRESS_DB_PASSWORD', 'example password') );
define( 'DB_HOST', getenv_docker('WORDPRESS_DB_HOST', 'mysql') );
define( 'DB_CHARSET', getenv_docker('WORDPRESS_DB_CHARSET', 'utf8') );
define( 'DB_COLLATE', getenv_docker('WORDPRESS_DB_COLLATE', '') );
define( 'AUTH_KEY',         getenv_docker('WORDPRESS_AUTH_KEY',         'd8f2be54324eb5adce604eadc1f764fb0f434d5c') );
define( 'SECURE_AUTH_KEY',  getenv_docker('WORDPRESS_SECURE_AUTH_KEY',  'afa7d1d02f8319d29700f88a699023dbfdc0fb06') );
define( 'LOGGED_IN_KEY',    getenv_docker('WORDPRESS_LOGGED_IN_KEY',    '59f82338c63cef50ac4bf8844629fe18311e2a9d') );
define( 'NONCE_KEY',        getenv_docker('WORDPRESS_NONCE_KEY',        '663290627678a35bdd883c6a70b14786eb38e63e') );
define( 'AUTH_SALT',        getenv_docker('WORDPRESS_AUTH_SALT',        '9c136144fd16c5582e172ea4d62de86dc1eae727') );
define( 'SECURE_AUTH_SALT', getenv_docker('WORDPRESS_SECURE_AUTH_SALT', 'd93c90ea57f8fc1176e4b9ca533b7c622bcd8f11') );
define( 'LOGGED_IN_SALT',   getenv_docker('WORDPRESS_LOGGED_IN_SALT',   '0fe82c317d2d0721c12eb08dc2fd4ea36487b0e1') );
define( 'NONCE_SALT',       getenv_docker('WORDPRESS_NONCE_SALT',       '26a208d36d3de99fc360ca02d0727ee43db8513f') );
define( 'WP_DEBUG', !!getenv_docker('WORDPRESS_DEBUG', '') );
if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && strpos($_SERVER['HTTP_X_FORWARDED_PROTO'], 'https') !== false) {
        $_SERVER['HTTPS'] = 'on';
}

$request_uri = $_SERVER['REQUEST_URI'] ?? '';

$request_uri = $_SERVER['REQUEST_URI'] ?? '';
error_log('Processing request URI: ' . $request_uri);

if (strpos($request_uri, '/dz') === 0) {
    $table_prefix = 'tti_bt_';
    define('WP_HOME', 'https://czc.samu.bt/dz');
    define('WP_SITEURL', 'https://czc.samu.bt/dz');
    define('WP_CONTENT_URL', 'https://czc.samu.bt/dz/wp-content');
    define('WP_CONTENT_DIR', '/var/www/html/dz/wp-content');
    define('WP_SITE_COOKIE_PATH', '/dz/');
    define('COOKIEPATH', '/dz/');
    define('SITECOOKIEPATH', '/dz/');
    define('NOBLOGREDIRECT', true);
} else {
    error_log('Using root configuration');
    $table_prefix = 'tti_bt_';
    define('WP_HOME', 'https://czc.samu.bt');
    define('WP_SITEURL', 'https://czc.samu.bt');
    define('WP_SITE_COOKIE_PATH', '/');
    define('COOKIEPATH', '/');
    define('SITECOOKIEPATH', '/');
}

define('WP_HOME_FORCE', true); 
define('WP_SITEURL_FORCE', true);

if (!defined('ABSPATH')) define('ABSPATH', __DIR__ . '/');
require_once ABSPATH . 'wp-settings.php';
