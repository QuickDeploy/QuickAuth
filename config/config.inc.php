<?php

/* Mysql */
/* It is not recommended to use `root` in production environment */
define('DB_HOST', 'qa-mysql');
define('DB_PORT', 3306);
define('DB_NAME', 'quickauth');
define('DB_USER', 'root');
define('DB_PASSWORD', '123456');
define('DB_SHOW_ERROR', false);

/* Redis */
/* Make sure that your Redis only listens to Intranet */
define('REDIS_SCHEME', 'tcp');
define('REDIS_HOST', 'qa-redis');
define('REDIS_PORT', 6379);
define('REDIS_SHOW_ERROR', false);

/* Site */
define('BASE_URL', 'http://127.0.0.1'); //make absolute url for SEO and avoid hijack, no '/' at the end
define('FORCE_VERIFY', false); //if set, unverified user will be refused to login (Warn: leave this switch as it is not finished)
//define('ALLOW_REGISTRATION', true);
//define('ALLOW_CUSTOM_UID', true);
define('FEEDBACK_EMAIL', 'support@newnius.com');
define('ALLOW_REGISTER', true);

/* OAuth */
define('ENABLE_OAUTH', true);
define('OAUTH_CODE_TIMEOUT', 300); // 5 min
define('OAUTH_TOKEN_TIMEOUT', 604800); // 7 day

/* Session */
define('ENABLE_MULTIPLE_LOGIN', true);
define('BIND_SESSION_WITH_IP', false);
define('SESSION_TIME_OUT', 1800);// 30 minutes 30*60=1800
define('ENABLE_COOKIE', true);

/* Rate Limit */
define('ENABLE_RATE_LIMIT', true);
define('RATE_LIMIT_KEY_PREFIX', 'rl');

/* Email */
define('ENABLE_EMAIL_ANTISPAM', true);
//define('MAXIMUM_EMAIL_PER_IP', 8);
define('MAXIMUM_EMAIL_PER_EMAIL', 5);//last 24 hours
define('SENDGRID_API_KEY', '');
define('EMAIL_FROM', 'service@example.com');