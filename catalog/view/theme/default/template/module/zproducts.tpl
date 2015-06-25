<?php if($type == 'slider') { ?>
    <div class="box">
      <div class="box-heading"><?php echo $heading_title; ?></div>
      <div class="box-content">
                <ul class="bxslider" id="bxslider-zproduct-<?php echo $module_id; ?>">
                    <?php foreach ($items as $product) { ?>
                      <li>
                        <?php if ($product['thumb']) { ?>
                            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                        <?php } ?>
                          <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                        <?php if ($product['price']) { ?>
                            <div class="price">
                              <?php if (!$product['special']) { ?>
                              <?php echo $product['price']; ?>
                              <?php } else { ?>
                              <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                              <?php } ?>
                                <?php if ($product['tax']) { ?>
                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                <?php } ?>
                            </div>
                        <?php } ?>
                        <?php if ($product['rating']) { ?>
                            <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                        <?php } ?>
                            <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
                      </li>
                      <?php } ?>
                </ul>

        </div>
    </div>

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
<?php /* type == slider */ ?>
<?php } else  { ?>
    <div class="box">
      <div class="box-heading"><?php echo $heading_title; ?></div>
      <div class="box-content">
          <ul class="zbox-product">
              <?php foreach ($items as $product) { ?>
                  <li>
                      <?php if ($product['thumb']) { ?>
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                      <?php } ?>
                      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                      <?php if ($product['price']) { ?>
                        <div class="price">
                            <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                            <?php } else { ?>
                                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                            <?php } ?>
                            <?php if ($product['tax']) { ?>
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                            <?php } ?>
                        </div>
                      <?php } ?>
                      <?php if ($product['rating']) { ?>
                            <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                      <?php } ?>
                            <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
                  </li>
              <?php } ?>
          </ul>
      </div>
    </div>
<?php } ?>