#!/usr/bin/php
<?php
/*
 * $argv[1] = Disk S/N
 * $argv[2] = Disk path
 * $argv[3] = add / remove
 * 
 * ID_PATH=pci-0000:08:00.0-ata-1 - cervena
 * ID_PATH=pci-0000:08:00.0-ata-2 - seda
*/

$d0_path = "pci-0000:08:00.0-ata-1";
$d1_path = "pci-0000:08:00.0-ata-2";

if($argv[2] == $d0_path){
	$fp = fopen('/var/www/udev-infopanel/drives/drive0.php', 'w');
	if($argv[3]=="add"){
		fwrite($fp, '<?php ');
		fwrite($fp, '$d0_sn = "'.$argv[1].'";');
		fwrite($fp, ' ?>');
	}
	elseif($argv[3]=="remove"){
		fwrite($fp, ' ');
		
	}
	fclose($fp);
}

elseif ($argv[2] == $d1_path){
	$fp = fopen('/var/www/udev-infopanel/drives/drive1.php', 'w');
	if($argv[3]=="add"){	
		fwrite($fp, '<?php ');
		fwrite($fp, '$d1_sn = "'.$argv[1].'";');
		fwrite($fp, ' ?>');
	}
	elseif($argv[3]=="remove"){
		fwrite($fp, ' ');
		
	}
	fclose($fp);
}


?>


