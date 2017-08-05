<?php
	defined('_JEXEC') or die;
?>
 <div class="containerxx">
    <div class="col-sm-3 no-gutters"><?php
      $config = JFactory::getConfig();
    echo $config->get( 'sitename' );?> © <?php echo date('Y');?></div>
    <div class="col-sm-6 center-footer">
            <a href="https://facebook.com/<?php echo $params->get('facebook_link'); ?>" title="" target="_blank" data-toggle="tooltip" data-original-title="Like Kenya Unites on Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="https://twitter.com/<?php echo $params->get('twitter_link'); ?>" title="" target="_blank" data-toggle="tooltip" data-original-title="Follow Kenya Unites on Facebook"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            <a href="https://linkedin.com/<?php echo $params->get('linkedin_link'); ?>" title="" target="_blank" data-toggle="tooltip" data-original-title="Follow Kenya Unites on LinkedIn"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
            <a href="https://google.com/+/<?php echo $params->get('gplus_link'); ?>" title="" target="_blank" data-toggle="tooltip" data-original-title="Like Kenya Unites on Google+"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
            <a href="https://youtube.com/<?php echo $params->get('youtube_link'); ?>" title="" target="_blank" data-toggle="tooltip" data-original-title="Subscribe to Kenya Unites YouTube channel"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
          </div>
    <div class="col-sm-3 no-gutters right"><a href="http://redbrumbies.co.ke" target="_blank" class="author" title="" data-toggle="tooltip" data-original-title="As usual, another awesome solution powered by Red Brumbies">Built By <span>Red</span> Brumbies</a></div>
  </div>
