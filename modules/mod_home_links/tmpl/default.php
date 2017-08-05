<?php
	defined('_JEXEC') or die;
?>
<div>
    <div class="home-cards row">
  <div class="col-sm-8 no-gutters">
    <div class="card-holder">
      <a href="<?php echo $params->get('firsttablink'); ?>">
        <div class="text-holder"><?php echo $params->get('firsttabtitle'); ?></div>
        <img src="<?php echo $params->get('firsttabimg'); ?>" class="img-responsive">
      </a>
    </div>
  </div>
  <div class="col-sm-4 no-gutters">
    <div class="card-holder">
      <a href="<?php echo $params->get('secondtablink'); ?>">
        <div class="text-holder"><?php echo $params->get('secondtabtitle'); ?></div>
        <img src="<?php echo $params->get('secondtabimg'); ?>" class="img-responsive">
      </a>
    </div>
  </div>
</div>
<div class="home-cards row">
  <div class="col-sm-4 no-gutters">
    <div class="card-holder">
      <a href="<?php echo $params->get('thirdtablink'); ?>">
        <div class="text-holder"><?php echo $params->get('thirdtabtitle'); ?></div>
        <img src="<?php echo $params->get('thirdtabimg'); ?>" class="img-responsive">
      </a>
    </div>
  </div>
  <div class="col-sm-4 no-gutters">
    <div class="card-holder">
      <a href="<?php echo $params->get('fourthtablink'); ?>">
        <div class="text-holder"><?php echo $params->get('fourthtabtitle'); ?></div>
        <img src="<?php echo $params->get('fourthtabimg'); ?>" class="img-responsive">
      </a>
    </div>
  </div>
  <div class="col-sm-4 no-gutters">
    <div class="card-holder">
      <a href="<?php echo $params->get('fifthtablink'); ?>">
        <div class="text-holder"><?php echo $params->get('fifthtabtitle'); ?></div>
        <img src="<?php echo $params->get('fifthtabimg'); ?>" class="img-responsive">
      </a>
    </div>
  </div>
</div>
</div>
