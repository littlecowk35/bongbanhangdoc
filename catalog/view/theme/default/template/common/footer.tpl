<footer>
<div class="container">
<?php if (isset($categories)) { ?>
    <?php $i = 0 ?>
    <?php foreach ($categories  as $category) { ?>
        <?php if ($i % 4 == 0) echo '<div class="row">'; ?>
        <?php $i++; ?>
        <div class="col-sm-3">
            <h5><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h5>
            <?php if (isset($category['children'])) { ?>
	<?php 
	$size = 1;
	if(ceil(count($category['children']) / $category['column'])>0)
		$size = ceil(count($category['children']) / $category['column']);
	foreach (array_chunk($category['children'],  $size ) as $children) { ?>
                    <ul class="list-unstyled">
                        <?php foreach ($children as $child) { ?>
                            <li>
                            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                <?php } ?>
            <?php } ?>
        </div>
        <?php if ($i % 4 == 0) echo '</div>'; ?>
    <?php } ?>
<?php } ?>
    <hr><div class="row">
        <div class="col-sm-8">
            <p><b>Bản quyền thuộc về <a href="http://www.coit.vn/">bongbanhangdoc.com</a></b></br>
            502, Cách Mạng Tháng 8, Phường Bùi Hữu Nghĩa, Quận Bình Thủy, TP Cần Thơ</br>
            Email: bongbanhangdoc@gmail.com - SĐT: 0913 319 707
            </p>
        </div>
        <div class="col-sm-4" style="text-align: right; margin-top: px;">
            <p>
                <a class="footer-icon-link contact-link" href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a>
                <a class="footer-icon-link facebook-link" href="https://www.facebook.com/quynh.khoa.758/"><i class="fa fa-facebook"></i></a>
            <br>
            <a href="http://www.coit.vn/" style="margin-top: 10px; display: block;" alt="Powered by CoIT Team">Powered by CoIT Team</a>
            </p>
        </div>
    </div>
</div>
</footer>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>
