<?php
	defined('_JEXEC') or die;
?>
<div class="custom hidden">
	<div class="triplets__col" style="background-image:url(<?php echo $params->get('firsttabimg'); ?>)">
		<a class="triplets__col__content flex--align--bottom" href="<?php echo $params->get('firsttablink'); ?>">
    <div class="triplets__col__content__box">
			<h5 class="header-f"><?php echo $params->get('firsttabtitle'); ?></h5>
		</div>
		</a>
	</div>
	<div class="triplets__col" style="background-image:url(<?php echo $params->get('secondtabimg'); ?>)">
		<a class="triplets__col__content" href="<?php echo $params->get('secondtablink'); ?>">
      <div class="triplets__col__content__box typ__align-center">
				<h5 class="header-f v-text-white"><?php echo $params->get('secondtabtitle'); ?></h5>
      </div>
		</a>
    </div>
  <div class="triplets__col" style="background-image:url(<?php echo $params->get('thirdtabimg'); ?>)">
		<a class="triplets__col__content flex--right--top" href="<?php echo $params->get('thirdtablink'); ?>">
			<div class="triplets__col__content__box typ__align-right flex--right--top">
				<h5 class="header-f v-text-white"><?php echo $params->get('thirdtabtitle'); ?></h5>
			</div>
		</a>
  </div>
</div>

 <div class="row">
  <div class="column">
    <div class="card">
      <img src="<?php echo $params->get('staff_image'); ?>" alt="<?php echo $params->get('staff_name'); ?>" style="width:100%">
      <div class="containerx">
        <h2><?php echo $params->get('staff_name'); ?></h2>
        <p class="title"><?php echo $params->get('staff_title'); ?></p>
        <p><?php echo $params->get('staff_desc'); ?></p>
        <p><?php echo $params->get('staff_email'); ?></p>
        <a href="mailto:<?php echo $params->get('staff_email'); ?>" class="button">Email</a>
      </div>
    </div>
  </div>
</div>
