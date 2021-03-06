<?php defined("APP") or die() // Main User Page ?>
<section class="section-stats row hidden-xs">
    <div class="row stats">
          <div class="col-md-8">
            <div class="panel panel-default panel-blue">
              <div class="panel-body">
                <p class="main-stats"><span style="color: #0067F4;"> <b> <?php echo $this->user->credits ?></span> </b> Total Credits </p>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="panel panel-default panel-blue">
              <div class="panel-body">
                <p class="main-stats" style="color: #0067F4;"><span></span> <a href="<?php echo Main::href("cash_out") ?>" class="btn btn-secondary btn-round"> Cash out </a> </p>
              </div>
            </div>
          </div>
        </div><!--/.stats-->
	<div class="col-sm-4 hidden-sm">
		<ul class="top-results">
			<li><i class="ti-pin"></i> <?php echo saasTopCountry(e("Most users are located in"), $this->user->id) ?></li>
			<li><i class="ti-world"></i> <?php echo saasTopReferrer(e("Top referer is"), $this->user->id) ?></li>
			<li><i class="ti-desktop"></i>  <?php echo saasDevice(e("Most users visit on"), $this->user->id) ?></li>
		</ul>
	</div>
	<div class="col-sm-8">
		<div class="inner">
			<div id="url-chart" class="chart"></div>
		</div>
	</div>
</section>
<div class="row">	
  <div id="user-content" class="col-md-8">  	
		<?php echo Main::message() ?>  	
  	<!-- Shortener Form -->
  	<?php $this->shortener() ?>

  	<?php echo $this->ads(728) ?>
		<div class="main-content panel panel-default">
			<div class="toolbox">
				<div class="row">
					<div class="col-md-8">
						<form action="<?php echo Main::href("user/search") ?>" id="search">
              <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                <input type="text" name="q" class="form-control" placeholder="<?php echo e('Enter keyword and press enter.')?>">
              </div>
						</form>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-sm-6 col-md-offset-6 hidden-xs">
								<select name="sort" class="filter" data-key="sort">
									<option value="newest"<?php if(!isset($_GET["sort"])) echo " selected"?>><?php echo e("Newest") ?></option>
									<option value="oldest"<?php if(Main::is_set("sort","oldest")) echo " selected"?>><?php echo e("Oldest") ?></option>
									<option value="popular"<?php if(Main::is_set("sort","popular")) echo " selected"?>><?php echo e("Popular") ?></option>
								</select>																						
							</div>
						</div>						
					</div>					
				</div><!--/.row-->
			</div><!-- /.toolbox -->			
			<div id="data-container">
				<div class="btn-group btn-group-sm">
					<a href="#" class="btn btn-gray tooltip" data-content="<?php echo e("Select all") ?>" id="selectall"><i class="fa fa-check-square"></i></a>
					<?php if (!isset($archive)): ?>
						<a href="#" class="btn btn-gray tooltip" data-content="<?php echo e("Archive all") ?>" id="archiveall"><i class="fa fa-briefcase"></i></a>
					<?php endif ?>
					<?php if ($this->permission("bundle") !== FALSE): ?>	
						<a href="#" class="btn btn-gray tooltip" data-content="<?php echo e("Add to bundle") ?>" id="addtobundle"><i class="fa fa-folder-open"></i></a>
					<?php endif ?>
					<a href="#" class="btn btn-gray tooltip" data-content="<?php echo e("Delete all") ?>"id="deleteall"><i class="fa fa-trash"></i></a>					
				</div>
				<form action="<?php echo Main::href("user/delete") ?>" method="post" id="delete-all-urls">				
					<div class="return-ajax"></div><!-- /.return-ajax -->
					<div class="url-container">
						<?php if (!$urls): ?>
							<p class="text-center"><?php echo e("No URLs found.") ?></p><br><br>
						<?php endif ?>
						<?php foreach ($urls as $url): ?>
							<?php include(TEMPLATE."/shared/url_loop.php") ?>
						<?php endforeach ?>
						<?php echo Main::csrf_token(TRUE) ?>
						</form>
						<?php echo $pagination ?>
					</div><!-- /.url-conainer -->
				</form>
			</div><!-- /#data-container -->
		</div><!-- /.main-content -->
  </div><!--/#user-content-->
  <div id="widgets" class="col-md-4">
  	<?php echo $this->sidebar() ?>
		<?php echo $this->widgets('news') ?>
    <?php echo $this->widgets('activities') ?> 
    <?php echo $this->widgets('top_urls') ?>
  </div><!--/#widgets-->
</div><!--/.row-->
<?php saasCharts($this->user->id) ?>