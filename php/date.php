<?php
date_default_timezone_set('Asia/Shanghai');


$time = time();
$mtime = microtime();
$three_month_ago = $time-60*60*24*30*3;


// echo $mtime;
echo "\n";
// echo $time;
echo "\n";

echo date('Y-m-d H:i:s', $time);
echo "\n";
echo date('Y-m-d H:i:s', $three_month_ago);


echo "\n";
?>
