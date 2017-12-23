<?php

// process_image('a.jpg');
resizeImage('a.jpg', '1000', '1000');


// process image
function process_image ($path) {
// 	$image	= imagecreatefromjpeg($path);
 	$image	= imagecreatefromstring(file_get_contents($path));
	$exif	= exif_read_data($path);

	if(!empty($exif['Orientation'])) {
		switch($exif['Orientation']) {
			case 8:
				$image = imagerotate($image,90,0);
				break;
			case 3:
				$image = imagerotate($image,180,0);
				break;
			case 6:
				$image = imagerotate($image,-90,0);
				break;
		}
	}

	$percent = 0.2;
	list($org_width, $org_height) = getimagesize($path);
	$new_width 	= '666';
	$new_height = '666';
	$image_p 	= imagecreatetruecolor($new_width, $new_height);
	imagecopyresampled($image_p, $image, 0, 0, 0, 0, $new_width, $new_height, $org_width, $org_height);

	return imagejpeg($image, 'aa_'.$path);
}


function resizeImage($im, $maxwidth, $maxheight) {
	$path = $im;

    $img = getimagesize($im);
    switch ($img[2]) {
        case 1:
            $im = @imagecreatefromgif($im);
            break;
        case 2:
            $im = @imagecreatefromjpeg($im);
            break;
        case 3:
            $im = @imagecreatefrompng($im);
            break;
    }

	$exif	= exif_read_data($path);
	if(!empty($exif['Orientation'])) {
		switch($exif['Orientation']) {
			case 8:
				$im = imagerotate($im,90,0);
				break;
			case 3:
				$im = imagerotate($im,180,0);
				break;
			case 6:
				$im = imagerotate($im,-90,0);
				break;
		}
	}

    $pic_width = imagesx($im);
    $pic_height = imagesy($im);
    $resizewidth_tag = false;
    $resizeheight_tag = false;
    if (($maxwidth && $pic_width > $maxwidth) || ($maxheight && $pic_height > $maxheight)) {
        if ($maxwidth && $pic_width > $maxwidth) {
            $widthratio = $maxwidth / $pic_width;
            $resizewidth_tag = true;
        }

        if ($maxheight && $pic_height > $maxheight) {
            $heightratio = $maxheight / $pic_height;
            $resizeheight_tag = true;
        }

        if ($resizewidth_tag && $resizeheight_tag) {
            if ($widthratio < $heightratio)
                $ratio = $widthratio;
            else
                $ratio = $heightratio;
        }


        if ($resizewidth_tag && !$resizeheight_tag)
            $ratio = $widthratio;
        if ($resizeheight_tag && !$resizewidth_tag)
            $ratio = $heightratio;
        $newwidth = $pic_width * $ratio;
        $newheight = $pic_height * $ratio;

        if (function_exists("imagecopyresampled")) {
            $newim = imagecreatetruecolor($newwidth, $newheight);
            imagecopyresampled($newim, $im, 0, 0, 0, 0, $newwidth, $newheight, $pic_width, $pic_height);
        } else {
            $newim = imagecreate($newwidth, $newheight);
            imagecopyresized($newim, $im, 0, 0, 0, 0, $newwidth, $newheight, $pic_width, $pic_height);
        }

        imagejpeg($newim, $path);
        imagedestroy($newim);
    } else {
        imagejpeg($im, $path);
    }
}

?>
