 <!-- breadcrumb-area start -->
 <div class="breadcrumb-area">
 	<div class="container">
 		<div class="row">
 			<div class="col-12">
 				<!-- breadcrumb-list start -->
 				<ul class="breadcrumb-list">
 					<li class="breadcrumb-item"><a href="">Trang chủ</a></li>
 					<li class="breadcrumb-item active">Giỏ hàng (<?php
										if ($this->session->userdata('cart')) {
											$val = $this->session->userdata('cart');
											echo count($val);
										} else {
											echo 0;
										}
										?>)</li>
 				</ul>
 				<!-- breadcrumb-list end -->
 			</div>
 		</div>
 	</div>
 </div>
 <!-- breadcrumb-area end -->
 <div class="wrapper-mainCart">
 	<div class="content-bodyCart">
 		<div class="container">
 			<div class="row">
 				<div class="col-md-8 col-sm-12 col-xs-12 contentCart-detail">
 					<div class="mainCart-detail">
 						<div class="heading-cart">
 							<h1>Giỏ hàng của bạn</h1>
 						</div>
						 <?php if ($this->session->userdata('cart')) :
								$cart = $this->session->userdata('cart');
							?>
 						<div class="list-pageform-cart">
 							<form action="#">
 								<div class="cart-row">
 									<p class="title-number-cart">
 										Bạn đang có <strong class="count-cart"><?php
										if ($this->session->userdata('cart')) {
											$val = $this->session->userdata('cart');
											echo count($val);
										} else {
											echo 0;
										}
										?> sản phẩm</strong> trong giỏ hàng
 									</p>
 									<div class="table-cart">
									 <?php foreach ($cart as $key => $value) :
													$row = $this->Mproduct->product_detail_id($key);
												?>
 										<div class="media-line-item line-item">
 											<div class="media-left">
 												<div class="item-img">
													<a href="<?php echo $row['alias'] ?>">
													<img src="public/images/products/<?php echo $row['avatar'] ?>" alt="<?php echo $row['name'] ?>">
												</a>
 												</div>
 												<div class="item-remove">
 												<a onclick="onRemoveProduct(<?php echo $row['id']; ?>)"><i class='bx bx-trash'></i></a>
 												</div>
 											</div>
 											<div class="media-right">
 												<div class="item-info">
 													<h3 class="item--title"><a href="<?php echo $row['alias'] ?>"><?php echo $row['name'] ?></a></h3>
 												</div>
 												<div class="item-price">
												 	<div class="price-box">
															<?php if ($row['sale'] > 0) : ?>
																<span class="new-price">
																	<?php echo (number_format($row['price_sale'])); ?> đ
																</span>
																<del class="old-price">
																	<?php echo (number_format($row['price'])); ?> đ
																</del>
															<?php else : ?>
																<span class="new-price">
																	<?php echo (number_format($row['price'])); ?> đ
																</span>
															<?php endif; ?>
														</div>
 												</div>
 											</div>
											 <div class="item-total-price">													
															<span class="line-item-total"><?php
																if ($row['price_sale'] > 0) {
																	echo (number_format($row['price_sale'] * $value)) . ' đ';
																} else {
																	echo (number_format($row['price'] * $value)) . ' đ';
																}
																?></span>
														</div>
 											<div class="media-total">
												
 												<div class="item-qty" style="width: 120px;">
												 <div class="quantity">
											<input class="cart-plus-minus-box" name="quantity" id="<?php echo $row['id'] ?>" class="form-control" type="number" value="<?php echo $value ?>" min="1" max="1000" onchange="onChangeSL(<?php echo $row['id'] ?>)">
											</div>
 												</div>
 											</div>
 										</div>
										 <?php endforeach; ?>
 									</div>
 								</div>
 							</form>
 						</div>
						 <?php else : ?>
							<div class="expanded-message text-center">Giỏ hàng của bạn đang trống</div>	
						 <?php endif; ?>
 					</div>
					 <button class="continue-btn" onclick="window.location.href='san-pham'">Tiếp tục mua hàng</button>
 				</div>
				 <?php if ($this->session->userdata('cart')) :
												$data = $this->session->userdata('cart');
												$money = 0;
												foreach ($data as $key => $value) :
													$row = $this->Mproduct->product_detail_id($key); ?>
  												<div style="display:none">
  													<div><?php echo $row['name']; ?></div>
  													<div class="text-center"><?php echo $value ?></div>
  													<div>
  														<?php
															if ($row['price_sale'] > 0) {
																$price_end = $row['price_sale'];
															} else {
																$price_end = $row['price'];
															}
															echo number_format($price_end) . ' đ';
															?>
  													</div>
  													<div style="float: right;">
  														<?php
															$total = 0;
															$total = $price_end * $value;
															$money += $total;
															echo number_format($total) . ' đ';
															?>
  													</div>
  												</div>
  											<?php endforeach; ?>
  										<?php endif; ?>
 				<div class="col-md-4 col-sm-12 col-xs-12 sidebarCart-sticky">
 					<div class="mainCart-sidebar wrap-order-summary">
 						<div class="order-summary-block">
 							<h2 class="summary-title">Thông tin đơn hàng</h2>

 							<div class="summary-time summary-picktime">
 								<div class="summary-time__row">
 									<div class="boxtime-title">
 										<p class="txt-title">Tạm tính</p>
 										<p class="txt-title ">
 											Phí vận chuyển
 										</p>
										 <?php
														if ($this->session->userdata('coupon_price')) {
															$price_coupon_money = $this->session->userdata('coupon_price');
															$price_coupon = number_format($this->session->userdata('coupon_price'));
															echo '
														<p class="txt-title ">Mã giảm giá</p>
														';
														}
														?>					
										
 									</div>
 									<div class="boxtime-radio" id="picktime_radio">
 										<div class="radio-item">
										 <?php echo number_format($money) ?> đ
 										</div>
 										<div class="radio-item">
										 <?php if ($this->session->userdata('cart')) :
								$cart = $this->session->userdata('cart');
							?>
										 <?php echo number_format($this->Mconfig->config_price_ship()) . ' đ'; ?>
										 <?php else : ?>
											—
											<?php endif; ?>
 										</div>
										 <?php
														if ($this->session->userdata('coupon_price')) {
															$price_coupon_money = $this->session->userdata('coupon_price');
															$price_coupon = number_format($this->session->userdata('coupon_price'));
															echo '
														<div class="radio-item">
														 -' . $price_coupon . ' đ
														</div>
														
														';
														}
														?>
 									</div>
 								</div>

 							</div>
 							<div class="summary-total">
 								<p>Tổng tiền: 
								 <?php if ($this->session->userdata('cart')) :
								$cart = $this->session->userdata('cart');
							?>
									<span><?php if(isset($price_coupon_money))
                                 {
                                    $money_pay = ($money + $this->Mconfig->config_price_ship()) - $price_coupon_money;
                                }
                                else{
                                    $money_pay = $money + $this->Mconfig->config_price_ship();
                                }
                                echo number_format($money_pay).' đ'; ?></span>
								 <?php else : ?>
									<span>0 đ</span>
											<?php endif; ?>
								</p>
 							</div>
 							<div class="summary-action">
								 <?php if ($this->session->userdata('cart')) :
								$cart = $this->session->userdata('cart');
							?>
							<div class="summary-warning  alert-order " style="display:block;margin-top:10px;">
							Bạn có thể nhập mã giảm giá sản phẩm ở trang thanh toán tiếp theo
 								</div>
								 <div class="summary-button">
 									<a id="btnCart-checkout" class="checkout-btn btnred"  onclick="window.location.href='info-order'">THANH TOÁN </a>
 								</div>
								 <?php else : ?>
									<div class="summary-alert  alert-danger " style="display:block;margin-top:10px">
 									Giỏ hàng của bạn hiện chưa có sản phẩm để tiến hành thanh toán
 								</div>
								 <div class="summary-button">
 									<a id="btnCart-checkout" class="checkout-btn btnred disabled">THANH TOÁN </a>
 								</div>
						 <?php endif; ?>
 								
 							</div>
 						</div>
 					
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>
 </div>






 <script>
 	function onChangeSL(id) {
 		var sl = document.getElementById(id).value;
 		var strurl = "<?php echo base_url(); ?>" + '/sanpham/update';
 		jQuery.ajax({
 			url: strurl,
 			type: 'POST',
 			dataType: 'json',
 			data: {
 				id: id,
 				sl: sl
 			},
 			success: function(data) {
 				document.location.reload(true);
 			}
 		});
 	}

 	function onRemoveProduct(id) {

 		swal({
 				text: "Bạn chắc chắn muốn bỏ sản phẩm này ra khỏi giỏ hàng?",
 				icon: false,
 				buttons: true,
 				dangerMode: true,
 				buttons: ["Hủy bỏ", "Đồng ý"],
 			})
 			.then((willDelete) => {
 				if (willDelete) {
 					var strurl = "<?php echo base_url(); ?>" + '/sanpham/remove';
 					jQuery.ajax({
 						url: strurl,
 						type: 'POST',
 						dataType: 'json',
 						data: {
 							id: id
 						},
 						success: function(data) {
 							document.location.reload(true);
 							swal("Xóa sản phẩm thành công", {
 								icon: "success",
								buttons:false
 							})
 						}
 					});
 				} else {
 					return
 				}
 			});



 	}

 	function checkCoupon() {
 		var code = $("input[name='coupon']").val();
 		var strurl = "<?php echo base_url(); ?>" + 'giohang/coupon';
 		jQuery.ajax({
 			url: strurl,
 			type: 'POST',
 			dataType: 'json',
 			data: {
 				code: code
 			},
 			success: function(data) {
 				$('#result_coupon').html(data);
 			}
 		});
 	}

 	function removeCoupon() {
 		swal({
 				title: "Cảnh báo",
 				text: "Bạn có chắc chắn muốn gỡ mã giảm này ?",
 				icon: false,
 				buttons: true,
 				dangerMode: true,
 				buttons: ["Hủy bỏ", "Xóa mã giảm giá"],
 			})
 			.then((willDelete) => {
 				if (willDelete) {
 					var strurl = "<?php echo base_url(); ?>" + '/giohang/removecoupon';
 					jQuery.ajax({
 						url: strurl,
 						type: 'POST',
 						dataType: 'json',
 						success: function(data) {
 							toastr.success('Đã xóa thành công mã giảm giá')
 							$('#result_coupon').html(data);
 							document.location.reload(true);
 						}
 					});

 				} else {
 					return
 				}
 			});


 	}


 	jQuery('<div class="quantity-nav"><div class="quantity-button quantity-up">+</div><div class="quantity-button quantity-down">-</div></div>').insertAfter('.quantity input');
 	jQuery('.quantity').each(function() {
 		var spinner = jQuery(this),
 			input = spinner.find('input[type="number"]'),
 			btnUp = spinner.find('.quantity-up'),
 			btnDown = spinner.find('.quantity-down'),
 			min = input.attr('min'),
 			max = input.attr('max');

 		btnUp.click(function() {
 			var oldValue = parseFloat(input.val());
 			if (oldValue >= max) {
 				var newVal = oldValue;
 			} else {
 				var newVal = oldValue + 1;
 			}
 			spinner.find("input").val(newVal);
 			spinner.find("input").trigger("change");
 		});

 		btnDown.click(function() {
 			var oldValue = parseFloat(input.val());
 			if (oldValue <= min) {
 				var newVal = oldValue;
 			} else {
 				var newVal = oldValue - 1;
 			}
 			spinner.find("input").val(newVal);
 			spinner.find("input").trigger("change");
 		});

 	});
 </script>