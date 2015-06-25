<div style="margin: -20px 0px -10px; padding: 0 10px;">
<div style="" class="row">
<?php $i = 1; ?>
  <?php foreach ($banners as $banner) { ?>
  <div style="padding: 20px 10px;" class="col-md-4 <?php echo ($i == 2 ? 'coit-new' : ''); ?>"><a href="<?php echo $banner['link']; ?>" alt="Sản phẩm khuyến mãi"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" style="height:auto;max-width:100%;" />
  </a></div>
  <?php $i++; ?>
  <?php } ?>

</div>
</div>
