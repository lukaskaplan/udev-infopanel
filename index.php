<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="jquery-2.1.1.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="./includes/styles.css">
	<title>udev-infopanel</title>
</head>

<body>
	<!-- Update #screen every second-->
	<script>
		$(document).ready(
			function(){
				setInterval(function(){
					$("#screen").load('./includes/disks.php')
				}, 1000);
			});
	</script>

	<div id="screen">
		
	</div> <!--/screen-->
</body>
</html>
