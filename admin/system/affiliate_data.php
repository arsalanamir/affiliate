<?php defined("APP") or die() // Settings Page ?>
<div class="row">
    <div id="user-content" class="col-md-12">

        <?php echo Main::message() ?>
        <div class="main-content"></div>



        <div class="panel panel-default panel-body">
            <h3><?php echo e("Affiliate") ?></h3>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Website/Brand</th>
                        <th>Paypal Account</th>
                        <th>Affiliate Link</th>
                        <th>Status</th>
                        <th colspan="2" class="text-center">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $i = 1 ?>
                    <?php foreach ($affiliates as $affiliate): ?>
                        <tr>
                            <td><?php echo $i++ ?></td>
                            <td><?php echo $affiliate->name ?></td>
                            <td><?php echo $affiliate->email ?></td>
                            <td><?php echo $affiliate->website_brand?></td>
                            <td><?php echo $affiliate->paypal_account?></td>
                            <td><?php echo $affiliate->affiliate_link?></td>
                            <td><?php echo $affiliate->status?></td>
                            <td>


                                <form action="<?php echo Main::href("admin/affiliate?id=".$affiliate->id."&status=Approved") ?>" method="post" >


                                    <button type="submit"  class="btn btn-primary btn-round" style="float:none!important;display:inline;"><?php echo e("Approve") ?></button>

                                </form>

                            </td>

                            <td>
                                <form action="<?php echo Main::href("admin/affiliate?id=".$affiliate->id."&status=Rejected") ?>" method="post" >

                                    <button type="submit" class="btn btn-danger btn-round" style="float:none!important;display:inline;"><?php echo e("Reject") ?></button>
                                </form>
                            </td>


                        </tr>
                    <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>

    </div><!--/#user-content-->

</div><!--/.row-->