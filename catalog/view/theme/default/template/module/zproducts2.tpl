<h3><?php echo $heading_title; ?></h3>
<?php if($type == 'slider') { ?>
  <div class="row" id="bxslider-zproduct-<?php echo $module_id; ?>">
    <?php foreach ($items as $product) { ?>
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
      <div class="product-thumb transition">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        <div class="caption">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
            <p><?php echo $product['description']; ?></p>

          <?php if ($product['price']) { ?>
          <p class="price">
            <?php if (!$product['special']) { ?>
            <?php echo $product['price']; ?>
            <?php } else { ?>
            <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
            <?php } ?>
              <?php if ($product['tax']) { ?>
              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
              <?php } ?>
          </p>
          <?php } ?>
        </div>
        <div class="button-group">
          <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
          <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
          <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
        </div>
      </div>
    </div>
    <?php } ?>
    <script>
            $(function() {
                $('#bxslider-zproduct-<?php echo $module_id; ?>').bxSlider({
                    minSlides: 1,
                    auto: <?php echo $slider_auto; ?>,
                    maxSlides: <?php echo $max_slides; ?>,
                    slideWidth: <?php echo $slider_item_width; ?>,
                    slideMargin: 0,
                    pager: false,
                    speed:  <?php echo $speed; ?>
                });
            });
        </script>
</div>
<?php /* type == slider */ ?>
<?php } else  { ?>

  <div class="row">
      <?php foreach ($items as $product) { ?>
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="product-thumb transition">
                  <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                  <div class="caption">
                    <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                      <p><?php echo $product['description']; ?></p>

                    <?php if ($product['price']) { ?>
                    <p class="price">
                      <?php if (!$product['special']) { ?>
                      <?php echo $product['price']; ?>
                      <?php } else { ?>
                      <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                      <?php } ?>
                        <?php if ($product['tax']) { ?>
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                        <?php } ?>
                    </p>
                    <?php } ?>
                  </div>
                  <div class="button-group">
                    <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                  </div>
                </div>
          </div>
      <?php } ?>
  </div>
<?php } ?>
