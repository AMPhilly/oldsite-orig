<?php
	require_once("../app.php");
	
	$_section = "about-us";
	$_page = "dance-dictionary";
?>
<?php include_once("analyticstracking.php") ?>
<?php require_once($mosConfig_absolute_path."/templates/interior-header.php"); ?>

		<div id="main-cont">
			<div id="interior-top-sliver"></div>
			<div id="interior-bottom-sliver"></div>
			<div id="main">
				<?php require_once($mosConfig_absolute_path."/templates/nav/tertiary/about-us.php"); ?>
				<div id="interior-wide-text-cont">
					<h1>Dance Dictionary</h1>
					
				</div>
				<div style="clear:both;"></div>
				<div id="video-link">
					<a href="<?= $mosConfig_live_site ?>/photos-and-testimonials/why-dance-infomercial.php?part=Dances"><img src="<?php echo $mosConfig_live_site ?>/images/dances-video-icon.jpg" /></a>
				</div>
			</div>
		</div>

<?php require_once($mosConfig_absolute_path."/templates/footer.php"); ?>