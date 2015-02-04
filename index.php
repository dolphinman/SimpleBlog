<?php

/**
 * Designed for PHP 5.4+
 * @author Matthew de Cuijper <mcdecuijper@gmail.com>
 * @copyright Copyright (c) 2015, Matthew de Cuijper
 * @version 1.0
 */

require_once('libs/Database.php');
require_once('libs/Blog.php');

$conf = [
    'hostname'  => 'localhost',
    'username'  => 'root',
    'password'  => '',
    'database'  => 'SimpleBlog'
];

$workDirectory = __DIR__;

$blog = new SimpleBlog($workDirectory, new database($conf));

$blog->buildBlog();

?>