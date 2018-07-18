<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'masukajah');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'AM{BVTIdQ9l7 j-_`dtMo/@@gJyMa6bB*]!j>o%j2oOmOnZlGs)it@$uDo+d#YdZ');
define('SECURE_AUTH_KEY',  '!1IR!}~}?G7FjU?<v Qjz(5&NzJ50^)2/j$m-AEsD<L2Ne^HI8d&NZ :s9M.6` *');
define('LOGGED_IN_KEY',    'Q.IZTWm>sH~xgbid>*aJq/jiHyGomQ8=+EsTYLIH*Wt9@*>b~uYj$7>5#zO#u#_X');
define('NONCE_KEY',        '_|3t&,NM*$KWpTa7IDMPS7!~g7m`^wEk.:{t9 =ylK5OVgwAvc?ksEr=&5#*~ZNh');
define('AUTH_SALT',        'Ahp%=){Q$dC{DP&ks|a@AA3h`5WZND4.uD $1vpK$OZf|D!X5kv??S,R]v5|bRan');
define('SECURE_AUTH_SALT', '_+9wE7m;:P95E+?y(SM8pv&7Q&ZD>u6r*}*<UR,=8I`L:)|!3n3ECLF^,1;&KC2D');
define('LOGGED_IN_SALT',   'V7q`Lt0Ga1 jks?HztTtEdhJ@MT4.p=PWN)w(ZMg@%(B@~y26,=wQkohRG?v#)wX');
define('NONCE_SALT',       'U8P^6:Csa0C8!n@wbcL-0tu<{S@>dvH{)~o/_c kkTYbcCy7r.G~(9&}ys53^Nas');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
