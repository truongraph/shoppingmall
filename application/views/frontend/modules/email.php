<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Order confirmation </title>
<meta name="robots" content="noindex,nofollow" />
<meta name="viewport" content="width=device-width; initial-scale=1.0;" />
<style type="text/css">
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap');
  body { margin: 0; padding: 0; background: #e1e1e1; }
  div, p, a, li, td { -webkit-text-size-adjust: none; }
  .ReadMsgBody { width: 100%; background-color: #ffffff; }
  .ExternalClass { width: 100%; background-color: #ffffff; }
  body { width: 100%; height: 100%; background-color: #e1e1e1; margin: 0; padding: 0; -webkit-font-smoothing: antialiased; }
  html { width: 100%; }
  p { padding: 0 !important; margin-top: 0 !important; margin-right: 0 !important; margin-bottom: 0 !important; margin-left: 0 !important; }
  .visibleMobile { display: none; }
  .hiddenMobile { display: block; }

  @media only screen and (max-width: 600px) {
  body { width: auto !important; }
  table[class=fullTable] { width: 96% !important; clear: both; }
  table[class=fullPadding] { width: 85% !important; clear: both; }
  table[class=col] { width: 45% !important; }
  .erase { display: none; }
  }

  @media only screen and (max-width: 420px) {
  table[class=fullTable] { width: 100% !important; clear: both; }
  table[class=fullPadding] { width: 85% !important; clear: both; }
  table[class=col] { width: 100% !important; clear: both; }
  table[class=col] td { text-align: left !important; }
  .erase { display: none; font-size: 0; max-height: 0; line-height: 0; padding: 0; }
  .visibleMobile { display: block !important; }
  .hiddenMobile { display: none !important; }
  }
</style>


<!-- Header -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#e1e1e1">
  <tr>
    <td height="20"></td>
  </tr>
  <tr>
    <td>
      <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff" style="border-radius: 10px 10px 0 0;">
        <tr class="hiddenMobile">
          <td height="40"></td>
        </tr>
        <tr class="visibleMobile">
          <td height="30"></td>
        </tr>

        <tr>
          <td>
            <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
              <tbody>
                <tr>
                  <td>
                    <table width="220" border="0" cellpadding="0" cellspacing="0" align="left" class="col">
                      <tbody>
                        <tr>
                          <td align="left"><strong>Hangchinhhieu.vn</strong></td>
                        </tr>
                        <tr class="hiddenMobile">
                          <td height="40"></td>
                        </tr>
                        <tr class="visibleMobile">
                          <td height="20"></td>
                        </tr>
                        <tr>
                          <td style="font-size: 12px; color: #5b5b5b; font-family: 'Inter', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
                            Xin chào, <?php echo $customer['fullname']?>.
                            <br> Cảm ơn bạn đã đặt hàng, chúng tôi sẽ liên hệ cho bạn trong vòng 24h.
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <table width="220" border="0" cellpadding="0" cellspacing="0" align="right" class="col">
                      <tbody>
                        <tr class="visibleMobile">
                          <td height="20"></td>
                        </tr>
                        <tr>
                          <td height="5"></td>
                        </tr>
                        <tr>
                          <td style="font-size: 21px; color: #00bac7; letter-spacing: -1px; font-family: 'Inter', sans-serif; line-height: 1; vertical-align: top; text-align: right;">
                            <strong>Hóa đơn đặt hàng</strong>
                          </td>
                        </tr>
                        <tr>
                        <tr class="hiddenMobile">
                          <td height="50"></td>
                        </tr>
                        <tr class="visibleMobile">
                          <td height="20"></td>
                        </tr>
                        <tr>
                          <td style="font-size: 12px; color: #5b5b5b; font-family: 'Inter', sans-serif; line-height: 18px; vertical-align: top; text-align: right;">
                            <small>MÃ ĐƠN: </small> <strong>#<?php echo $order['orderCode'] ?></strong><br />
                            <small><?php echo date("d/m/Y h:i:s A", strtotime($order['orderdate']));  ?></small><br />
							<small><?php echo $order['payment'] ?></small>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!-- /Header -->
<!-- Order Details -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#e1e1e1">
  <tbody>
    <tr>
      <td>
        <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff">
          <tbody>
            <tr>
            <tr class="hiddenMobile">
              <td height="60"></td>
            </tr>
            <tr class="visibleMobile">
              <td height="40"></td>
            </tr>
            <tr>
              <td>
                <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
                  <tbody>
                    <tr>
                      <th style="font-size: 12px; font-family: 'Inter', sans-serif; color: #5b5b5b; font-weight: normal; line-height: 1; vertical-align: top; padding: 0 10px 7px 0;" width="52%" align="left">
                        Tên sản phẩm
                      </th>
                      <th style="font-size: 12px; font-family: 'Inter', sans-serif; color: #5b5b5b; font-weight: normal; line-height: 1; vertical-align: top; padding: 0 0 7px;" align="left">
                        <small>Mã sản phẩm</small>
                      </th>
                      <th style="font-size: 12px; font-family: 'Inter', sans-serif; color: #5b5b5b; font-weight: normal; line-height: 1; vertical-align: top; padding: 0 0 7px;" align="center">
                        Số lượng
                      </th>
                      <th style="font-size: 12px; font-family: 'Inter', sans-serif; color: #1e2b33; font-weight: normal; line-height: 1; vertical-align: top; padding: 0 0 7px;" align="end">
                        Tổng cộng
                      </th>
                    </tr>
                    <tr>
                      <td height="1" style="background: #bebebe;" colspan="4"></td>
                    </tr>
                    <tr>
                      <td height="10" colspan="4"></td>
                    </tr>
                    <?php 
					$total = 0;
					foreach ($orderDetail as $value) :?>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #00bac7;  line-height: 18px;  vertical-align: top; padding:10px 0;" class="article">
                      <?php echo $value['name']; ?>
                      </td>
                      <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #646a6e;  line-height: 18px;  vertical-align: top; padding:10px 0;"><small><?php echo $value['sku'] ?></small></td>
                      <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #646a6e;  line-height: 18px;  vertical-align: top; padding:10px 0;" align="center">x<?php echo $value['count'] ?></td>
                      <td style="padding:5px 10px;text-align:center;display:none"><?php echo number_format($value['priceorder']) ?> </td>
                      <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #1e2b33;  line-height: 18px;  vertical-align: top; padding:10px 0;" align="right"><?php 
								$price = $value['priceorder'] * $value['count'];
								echo number_format($price);
								$total += $price;
								?>
							</td>
                    </tr>
                    <tr>
                      <td height="1" colspan="4" style="border-bottom:1px solid #e4e4e4"></td>
                    </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </td>
            </tr>
            <tr>
              <td height="20"></td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<!-- /Order Details -->
<!-- Total -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#e1e1e1">
  <tbody>
    <tr>
      <td>
        <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff">
          <tbody>
            <tr>
              <td>

                <!-- Table Total -->
                <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
                  <tbody>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #646a6e; line-height: 22px; vertical-align: top; text-align:left; ">
                      Tổng cộng 
                      </td>
                      <td style="font-size: 12px;margin-left:7px; font-family: 'Inter', sans-serif; color: #646a6e; line-height: 22px; vertical-align: top; text-align:right; white-space:nowrap;" width="80">
                       <?php echo  number_format($total) ?> VNĐ
                      </td>
                    </tr>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #646a6e; line-height: 22px; vertical-align: top; text-align:left; ">
                      Phí vận chuyển 
                      </td>
                      <td style="font-size: 12px;margin-left:7px; font-family: 'Inter', sans-serif; color: #646a6e; line-height: 22px; vertical-align: top; text-align:right; ">
                      <?php echo  number_format($priceShip) ?> VNĐ
                      </td>
                    </tr>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align:left; ">
                        <strong>Tổng thành tiền </strong>
                      </td>
                      <td style="font-size: 12px;margin-left:7px; font-family: 'Inter', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align:right; ">
                        <strong> <?php echo number_format($order['money']) ?> VNĐ</strong>
                      </td>
                    </tr>
                    <tr>
                      <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #b0b0b0; line-height: 22px; vertical-align: top; text-align:left; "><small>Mã giảm </small></td>
                      <td style="font-size: 12px;margin-left:7px; font-family: 'Inter', sans-serif; color: #b0b0b0; line-height: 22px; vertical-align: top; text-align:right; ">
                        <small>- <?php echo  number_format($coupon) ?> VNĐ</small>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <!-- /Table Total -->

              </td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
<!-- /Total -->
<!-- Information -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#e1e1e1">
  <tbody>
    <tr>
      <td>
        <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff">
          <tbody>
		  <tr>
              <td height="20"></td>
            </tr>
            <tr>
              <td>
                <table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
                  <tbody>
                    <tr>
                      <td>
                        <table width="220" border="0" cellpadding="0" cellspacing="0" align="left" class="col">

                          <tbody>
                            <tr>
                              <td style="font-size: 11px; font-family: 'Inter', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top; ">
                                <strong>THÔNG TIN ĐẶT HÀNG</strong>
                              </td>
                            </tr>
                            <tr>
                              <td width="100%" height="10"></td>
                            </tr>
                            <tr>
                              <td style="font-size: 12px; font-family: 'Inter', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top; ">
                              <?php echo $order['fullname'] ?><br> <?php echo $customer['email'] ?><br> <?php echo $order['phone'] ?><br> <?php echo $order['address'] ?>, <?php echo $district; ?>, <?php echo $province; ?><br><?php echo $order['notes'] ?>
                              </td>
                            </tr>
                          </tbody>
                        </table>

                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          
           
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
