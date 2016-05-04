<?php
    $dirs = scandir(__DIR__ . '/../PHPCI/build/.');

    $dirs = array_values($dirs);

    rsort($dirs);

    foreach ($dirs as $dir){
        if (is_dir($dir) && is_file(__DIR__ . '/../PHPCI/build/' . $dir . '/app_test.php')){
            return require __DIR__ . '/../PHPCI/build/' . $dir . '/app_test.php';
        }
    }