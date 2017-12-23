<?php
date_default_timezone_set('Asia/Shanghai');


$time = time();
$date = date('YmdHis', $time);


echo microtime();
echo "\n";
echo $time;
echo "\n";
echo $date;
echo "\n";
echo date('Y-m-d His', $date);

?>
