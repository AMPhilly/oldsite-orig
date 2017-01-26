<?php
	require_once("../app.php");
	
	$_section = "about-us";
	$_page = "staff";
?>
<?php require_once($mosConfig_absolute_path."/templates/interior-header.php"); ?>

		<div id="main-cont">
			<div id="interior-top-sliver"></div>
			<div id="interior-bottom-sliver"></div>
			<div id="main">
				<?php require_once($mosConfig_absolute_path."/templates/nav/tertiary/about-us.php"); ?>
				<div id="interior-wide-text-cont">
					<h1>Meet The Staff</h1>
					<div id="staff">
						<div class="staff-box"><img src="<?= $mosConfig_live_site ?>/images/staff/sharon.jpg" /><p>Sharon Thomas<br /><em>Franchisee</em></p></div>
						<div class="staff-box"><img src="<?= $mosConfig_live_site ?>/images/staff/bobbi.jpg" /><p>Bobbi Townsend<br /><em>Student Counselor, Instructor</em></p></div>
						<div class="staff-box"><img src="<?= $mosConfig_live_site ?>/images/staff/katy.jpg" /><p>Katy Oyler<br /><em>Instructor</em></p></div>
						<div class="staff-box"><img src="<?= $mosConfig_live_site ?>/images/staff/kristy.jpg" /><p>Christie McClary<br /><em>Instructor</em></p></div>
						<div class="staff-box"><img src="<?= $mosConfig_live_site ?>/images/staff/ron.jpg" /><p>Ron Townsend<br /><em>Instructor</em></p></div>
						<div class="staff-box"><img src="<?= $mosConfig_live_site ?>/images/staff/rafael.jpg" /><p>Rafael Dueno<br /><em>Instructor</em></p></div>
					</div>
				</div>
				<div style="clear:both;"></div>
				<div id="video-link">
					<a href="<?= $mosConfig_live_site ?>/photos-and-testimonials/why-dance-infomercial.php?part=Dances"><img src="<?php echo $mosConfig_live_site ?>/images/dances-video-icon.jpg" /></a>
				</div>
			</div>
		</div>

<?php require_once($mosConfig_absolute_path."/templates/footer.php"); ?>