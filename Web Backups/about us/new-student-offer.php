<?php
	require_once("../app.php");
	
	$_section = "about-us";
	$_page = "new-student-offer";
	$_page_meta_keywords = "Introductory dance lessons";
	$_page_meta_description = "Let us show you how fun and easy learning to dance can be! We would like to invite you to take a private lesson on us. Couples and singles are welcome to take advantage of this great opportunity to discover the dancer in you.";
	$_page_title ="$30 Introductory Dance Lesson";
?>
<?php require_once($mosConfig_absolute_path."/templates/interior-header.php"); ?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-78951204-1', 'auto');
  ga('send', 'pageview');

</script>

		<div id="main-cont">
			<div id="interior-top-sliver"></div>
			<div id="interior-bottom-sliver"></div>
			<div id="main">
				<img id="main-cont-background" src="<?php echo $mosConfig_live_site ?>/images/people-dancing.jpg" />
				<?php require_once($mosConfig_absolute_path."/templates/nav/tertiary/about-us.php"); ?>
				<div id="interior-text-cont">
					<h1>New Student Offer</h1>
					<h2>
						Get Started with an Introductory Lesson for only $30.00</h2>
					<p>Let us show you how fun and easy learning to dance can be!<strong> </strong>Couples and singles are welcome to take advantage of this great opportunity to discover the dancer in you.  Couples will 
					  dance with one another and have one instructor.  Singles will dance with the dance instructor directly.  The private 
					  lesson will last approximately 30-40 minutes and we assume all of our first timers have had no prior lessons.  Our warm, 
					  friendly and professional staff will make you feel comfortable from start to finish. </p>
<p>
						On your first lesson we will help you choose dances that would be best suited for you using the types of music you enjoy.  
						If you have a specific dance in mind, we will happily personalize your lesson to work on just that dance.  We find that 
						people preparing for weddings usually have a special song or dance they would like to learn.
					</p>
					<p>
						If you have always thought that you had two left feet or no sense of rhythm, let us prove you wrong!  You don't need to 
						be a great athlete or a "natural dancer" to learn how to ballroom dance, you just need a desire to learn and a proven 
						method of instruction.
					</p>
					<p><a href="<?= $mosConfig_live_site ?>/contact-us.php">Contact Us Today and Dance Tonight!</a></p>
				</div>
				<div style="clear:both;"></div>
				<div id="video-link">
					<a href="<?= $mosConfig_live_site ?>/photos-and-testimonials/why-dance-infomercial.php?part=GetStarted"><img src="<?php echo $mosConfig_live_site ?>/images/getstarted-video-icon.jpg" /></a>
				</div>
			</div>
		</div>

<?php require_once($mosConfig_absolute_path."/templates/footer.php"); ?>