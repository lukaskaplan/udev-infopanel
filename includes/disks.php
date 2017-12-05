<?php
$d0_sn = "";
$d1_sn = "";
@include('drives/drive0.php');
@include('drives/drive1.php');

if($d0_sn != "") $d0_running = " running";
else $d0_running = "";
if($d1_sn != "") $d1_running = " running";
else $d1_running = "";
?>

<div class="disk<?php echo $d0_running;?>" id="disk0">
	Disk 0<br>
	<?php echo $d0_sn;?>
</div>

<div class="disk<?php echo $d1_running;?>" id="disk1">
	Disk 1<br>
	<?php echo $d1_sn;?>
</div>

