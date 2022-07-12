<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('DB_NAME') );

/** Database username */
define( 'DB_USER', getenv('DB_USER') );

/** Database password */
define( 'DB_PASSWORD', getenv('DB_PASSWORD') );

/** Database hostname */
define( 'DB_HOST', getenv('DB_HOST') );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );


define( 'WP_HOME', getenv('WP_HOME') );
define( 'WP_SITEURL', getenv('WP_URL') );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'EqdGt:;?.%D<f,L>Rv82zr[UCQ^O%%LUOJv;Xs#BSmNV_0|u_/3?#IG7U/9oVz|B' );
define( 'SECURE_AUTH_KEY',   '7?i7RWk>%,{$/__8_lf)NSY%]Fl>6TCapz_Lz^R,Uu=/RaD|PEMr*F:-%06<h~(7' );
define( 'LOGGED_IN_KEY',     '=QR#oy!GUEYtb&khLWLk*|7O8#=EIhrD{>txPoi7}{;@Qgo7fRH&[8Qp`jh?.(]9' );
define( 'NONCE_KEY',         '#[tN^l)jH(9)Ie>X~p,<s;.t*WVbi72!H:dTIN[}m3VQa8Fm&!Tk<9H?U,^$T.u{' );
define( 'AUTH_SALT',         'o~v.nZ;m:;CF,<H!qNc<t&7h_~zw)]5(NBCpifI!3Q=_J~K4@W{<;v~xxchh9LSu' );
define( 'SECURE_AUTH_SALT',  ';2Da5l5lxYIRA&gGZ|fx8KHcb4?5Zn;}ec&7- =B&>59-f%;DDgn0:%~qa2>Od&B' );
define( 'LOGGED_IN_SALT',    'j-kn.)$$bu>a6J|=?s0x*_!@.GilgGVp4k&dFV!#32z_T*k2^x7w()vx7X4=Q37:' );
define( 'NONCE_SALT',        'Z>a%l+`Mx5=+7%4&ZFXD<fLXj.oEtkD-f:,tpoe?~VL)QOIBbJ3{52LZemkfa.fe' );
define( 'WP_CACHE_KEY_SALT', 'lpfleide.42.fr' );

define('WP_CACHE', true);
define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', 6379);
define('FS_METHOD','direct');
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
