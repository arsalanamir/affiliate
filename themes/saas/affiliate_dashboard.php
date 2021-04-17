<?php defined("APP") or die() // Main User Page ?>


<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">Affiliate Link</div>
            <div class="panel-body nopadding">
                <p> <?php echo $this->config['url'].'/referral_link?referral_link='.$affilaite[0]->referral_link ?></p>
            </div>
        </div>
    </div>

</div>



<div class="row stats">

    <div class="col-md-3">
        <div class="panel panel-default panel-green">
            <div class="panel-body">
                <p class="main-stats"> Clicks</p>
                <p> <?php echo $affilaite[0]->clicks ?></p>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="panel panel-default panel-red">
            <div class="panel-body">
                <p class="main-stats">Register Users</p>
                <p><?php echo $affilaite[0]->register_users ?></p>
            </div>
        </div>
    </div>

</div><!--/.stats-->

