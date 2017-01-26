<?php
	require_once("../app.php");
	
	$_section = "about-us";
	$_page = "dances-we-offer";
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
				<?php require_once($mosConfig_absolute_path."/templates/nav/tertiary/about-us.php"); ?>
				<div id="interior-wide-text-cont">
					<h1>Dances We Offer</h1>
					
					<p class="copy-header">
						Listed below are some of those enduring dances that help make social dancing forever popular. 
						See below to learn exciting facts and view video of these exciting dance styles!
					</p>
					
					<h2>Cha-Cha</h2>
					<p>
						An offshoot of the Mambo, the <strong>Cha Cha</strong> (originally the cha-cha-cha) evolved out of popular movement 
						in slow-tempo Mambo called the Triple Mambo. By 1954 it had evolved into a dance all its own. 
						It's a must style to know, the all time favorite <strong>latin dance</strong>.					</p>
					
				  <h2>Disco/The Hustle</h2>
					<p>
						A kind of dancing more than a specific dance, <strong>Disco</strong> has strong roots in Swing, Samba, Cha-Cha, 
						Mambo, Merengue, Fox Trot and Tango. The most popular version, the <strong>Hustle</strong> (of "Saturday Night 
						Fever" fame), is believed to have originated in New York in 1970. This free form style is still 
						one of the most popular at all night clubs and socials.					</p>
					
				  <h2>Fox Trot</h2>
					<p>
						Created in 1912 by Harry Fox, the<strong> Fox Trot</strong> was the first dance that permitted people to hold each 
						other closer than arm's length. If you think the term "dirty dancing" was a product of the 80s, 
						think again. The Fox Trot was the first to be tagged "indecent behavior". Today it's still the most 
						popular of all social dances. Some people refer to the Fox Trot as the "Slow Dance" or the "Two-Step", 
						or a "Conversational Dance" because of its closeness and conversation ability at the same time. 
						The Fox Trot is good for developing "smoothness" and "ease of movement".					</p>
					
				  <h2>Mambo</h2>
					<p>
						Introduced by band leader Anselmo Sacaras in 1944, the <strong>Mambo</strong> - a merger of Swing and Rumba - didn't 
						really catch on until the 1950s and it remains very popular today.					</p>
					
				  <h2>Merengue</h2>
					<p>
						Considered too scandalous when it was introduced to the United States in 1941, the <strong>Merengue</strong> went into 
						eclipse until 1957 when Xavier Cugat resurrected it. Its point of origin is uncertain; both Haiti and 
						the Dominican Republic claim it, and it contains elements of both cultures. It's fun and exciting.					</p>
					
				  <h2>Rumba</h2>
					<p>
						The <strong>Rumba</strong> is an ever increasingly popular romantic <strong>Latin dance</strong> dating back some 400 years ago, and is 
						better known as the Latin get acquainted dance or the dance with the wiggle. The Rumba sometimes 
						substitutes for those in-between tempos and features a subtle or relaxed (lateral) hip motion and 
						Latin styling. Rumba hip movements are used in most of the popular Latin dances as well as the 
						free-style of disco and nightclub dancing.					</p>
					
				  <h2>Salsa</h2>
					<p>
						A peppery version of the Mambo laced with steps from other Latin dances. The <strong>Salsa</strong> is performed to 
						a fiery, faster tempo. Some call it a form of Latinized Rock and Roll. It's high-energy and all fun.					</p>
					
				  <h2>Samba</h2>
					<p>
						A street Festival dance that originated in Brazil, the <strong>Samba</strong> was introduced to the United States 
						in the late 1920's in a Broadway play called "Street Carnival."					</p>
					
				  <h2>Swing</h2>
					<p>
						First known as the Lindy (in honor of Charles Lindberg and his historic hop across the Atlantic), 
						this perennially <strong>popular dance</strong> emerged in the late 1920's. lt combined steps from the Black Bottom; 
						it was also the Bop and Push, the Hustle and Boot Scoot, Shag, Charleston and Hop. During the war 
						years it re-emerged on the East Coast as the Jitterbug-jive and on the West Coast as Swing. You 
						can Rock & Roll with Swing.					</p>
					
				  <h2>Tango</h2>
					<p>
						Rudolph Valentino single-handedly danced this Latin import into nationwide popularity beginning in 
						1910. Although widely believed to have originated in Argentina, it actually may have come from Spain. 
						It's dramatic, exciting and known as the Dancer's Dance. The <strong>Tango</strong> with all its staccato movements, 
						greatly improves a man's lead or a woman's ability to follow (respond) and develops a strong sense 
						of feeling for music.					</p>
					
				  <h2>Waltz</h2>
					<p>
						This "mother of all dances" originated in Italy in the 1600's as a round dance called the Volte. It 
						arrived in America in the early 1800's and was the first social dance in which a woman was actually 
						held in a man's arms. Learning to <strong>Waltz</strong> is elegant. The Waltz develops "graceful movement" and 
						"poise". Every wedding reception, social "black-tie" formal and holiday party includes Waltz steps.					</p>
					
			  </div>
				<div style="clear:both;"></div>
				<div id="video-link">
					<a href="<?= $mosConfig_live_site ?>/photos-and-testimonials/why-dance-infomercial.php?part=Dances"><img src="<?php echo $mosConfig_live_site ?>/images/dances-video-icon.jpg" /></a>
				</div>
			</div>
		</div>

<?php require_once($mosConfig_absolute_path."/templates/footer.php"); ?>