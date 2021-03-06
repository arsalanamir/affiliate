<?php defined("APP") or die() ?>
<section class="section-light">
  <div class="container">
    <h3 class="feature-h text-center"><?php echo e("Blog") ?></h3>
    <ol class="breadcrumb text-center">
      <li><a href="<?php echo Main::href("") ?>"><?php echo e("Home") ?></a></li>
      <li><a href="<?php echo Main::href("blog") ?>"><?php echo e("Blog") ?></a></li>
    </ol>   
  </div>
</section>
<section id="blog">
	<div class="container content">
		<?php echo $this->ads(728,0) ?>		
		<div class="row main-content">
			<div class="col-md-8">				
				<?php if (!$posts): ?>

				<div class="panel panel-body panel-default">
					<?php echo e("No posts found.") ?>
				</div>						
				<?php endif ?>
				
				<?php foreach ($posts as $post): ?>
				<div class="panel panel-body panel-default">
					<?php if ($post->image): ?>
						<a href="<?php echo Main::href("blog/{$post->slug}") ?>" title="<?php echo $post->image ?>" class="blog-image"><img src="<?php echo uploads("blog/{$post->image}") ?>" alt="<?php echo $post->title ?>"></a>
					<?php endif ?>
					<h3><a href="<?php echo Main::href("blog/{$post->slug}") ?>"><?php echo $post->title ?></a></h3>
					<span><?php echo date("d.M.Y", strtotime($post->date)) ?></span>
					<hr>						
					<?php echo Main::readmore($post->content, Main::href("blog/{$post->slug}")) ?>
				</div>					
				<?php endforeach ?>					
				
				<?php if($max > 1): ?>
					<div class="panel panel-body panel-default">
						<?php echo $pagination ?>
					</div>
				<?php endif ?>
			</div>
			<div class="col-md-4">
				<?php echo $this->ads(300,0) ?>
				<?php echo $this->widgets("social_count") ?>
				<?php echo $this->widgets("top_posts") ?>
			</div>
		</div>		
	</div>
</section>