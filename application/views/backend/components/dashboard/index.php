<?php
$d = getdate();
$year = $d['year'];
$total = 0;
$cost = 0;
for ($i = 1; $i <= 12; $i++) {
  $list_orrders = $this->Morders->order_follow_month($year, $i);
  $sum = 0;
  foreach ($list_orrders as $row_orrder) {
    $order_detail = $this->Morderdetail->orderdetail_orderid($row_orrder['id']);
    foreach ($order_detail as $value) {
      $sum += $value['count'];
    }
    $total += $row_orrder['money'];
  }
}
?>
<div class="container-fluid">

  <!-- Title -->
  <h1 class="h2">
    Bảng điều khiển
  </h1>

  <div class="row">
    <div class="col-lg-6 col-xxl-3 d-flex">

      <!-- Card -->
      <div class="card border-0 flex-fill w-100">
        <div class="card-body">
          <div class="row">
            <div class="col">

              <!-- Title -->
              <h5 class="text-uppercase text-muted fw-semibold mb-2">
                Khách hàng mới
              </h5>

              <!-- Subtitle -->
              <h2 class="mb-0">
                <?php echo $total3; ?>
              </h2>
            </div>
            <div class="col-auto">

              <!-- Icon -->
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14" height="30" width="30">
                <path fill="#00bac7" fill-rule="evenodd" d="M5.5 0C4.83696 0 4.20107 0.263392 3.73223 0.732233C3.26339 1.20107 3 1.83696 3 2.5V9.75H5.82646C6.29059 9.75 6.73571 9.93437 7.0639 10.2626C7.39209 10.5908 7.57646 11.0359 7.57646 11.5V12C7.57646 12.1989 7.65548 12.3897 7.79613 12.5303C7.93678 12.671 8.12755 12.75 8.32646 12.75C8.37105 12.75 8.41509 12.7523 8.45848 12.7569C9.2059 12.7513 9.67694 12.5491 9.97529 12.2158C10.2386 11.9218 10.4405 11.4452 10.5 10.6896V4.87663C10.4964 4.84955 10.4946 4.82192 10.4946 4.79386V4.78577V4.77771V4.76968V4.76167V4.75369V4.74574V4.7378V4.7299V4.72202V4.71416V4.70633V4.69852V4.69074V4.68299V4.67526V4.66755V4.65987V4.65221V4.64458V4.63698V4.62939V4.62183V4.6143V4.60679V4.59931V4.59185V4.58441V4.577V4.56961V4.56224V4.5549V4.54759V4.54029V4.53302V4.52578V4.51856V4.51136V4.50418V4.49703V4.4899V4.4828V4.47572V4.46866V4.46163V4.45461V4.44763V4.44066V4.43372V4.4268V4.4199V4.41303V4.40618V4.39935V4.39254V4.38576V4.379V4.37226V4.36554V4.35885V4.35218V4.34553V4.3389V4.33229V4.32571V4.31915V4.31261V4.30609V4.2996V4.29312V4.28667V4.28024V4.27383V4.26744V4.26107V4.25473V4.2484V4.2421V4.23582V4.22956V4.22332V4.2171V4.21091V4.20473V4.19857V4.19244V4.18633V4.18023V4.17416V4.16811V4.16208V4.15606V4.15007V4.1441V4.13815V4.13222V4.12631V4.12042V4.11455V4.1087V4.10287V4.09706V4.09127V4.0855V4.07975V4.07402V4.06831V4.06261V4.05694V4.05129V4.04565V4.04004V4.03444V4.02887V4.02331V4.01777V4.01225V4.00675V4.00127V3.99581V3.99036V3.98494V3.97953V3.97414V3.96877V3.96342V3.95809V3.95277V3.94747V3.9422V3.93694V3.93169V3.92647V3.92126V3.91607V3.9109V3.90575V3.90062V3.8955V3.8904V3.88532V3.88025V3.87521V3.87018V3.86516V3.86017V3.85519V3.85023V3.84529V3.84036V3.83545V3.83056V3.82568V3.82082V3.81598V3.81116V3.80635V3.80155V3.79678V3.79202V3.78728V3.78255V3.77784V3.77314V3.76847V3.7638V3.75916V3.75453V3.74991V3.74532V3.74073V3.73617V3.73161V3.72708V3.72256V3.71806V3.71357V3.70909V3.70463V3.70019V3.69576V3.69135V3.68695V3.68257V3.6782V3.67385V3.66951V3.66519V3.66088V3.65659V3.65231V3.64805V3.6438V3.63956V3.63534V3.63114V3.62694V3.62277V3.6186V3.61445V3.61032V3.6062V3.60209V3.59799V3.59391V3.58985V3.58579V3.58176V3.57773V3.57372V3.56972V3.56574V3.56176V3.55781V3.55386V3.54993V3.54601V3.5421V3.53821V3.53433V3.53046V3.52661V3.52277V3.51894V3.51512V3.51132V3.50753V3.50375V3.49998V3.49623V3.49249V3.48876V3.48504V3.48134V3.47765V3.47396V3.4703V3.46664V3.46299V3.45936V3.45574V3.45213V3.44853V3.44494V3.44137V3.4378V3.43425V3.43071V3.42718V3.42366V3.42015V3.41665V3.41317V3.40969V3.40623V3.40278V3.39933V3.3959V3.39248V3.38907V3.38567V3.38228V3.3789V3.37553V3.37217V3.36883V3.36549V3.36216V3.35884V3.35553V3.35224V3.34895V3.34567V3.3424V3.33914V3.33589V3.33265V3.32942V3.3262V3.32299V3.31979V3.3166V3.31342V3.31024V3.30708V3.30392V3.30077V3.29764V3.29451V3.29139V3.28828V3.28517V3.28208V3.279V3.27592V3.27285V3.26979V3.26674V3.2637V3.26066V3.25763V3.25462V3.2516V3.2486V3.24561V3.24262V3.23964V3.23667V3.23371V3.23075V3.2278V3.22486V3.22193V3.21901V3.21609V3.21318V3.21027V3.20738V3.20449V3.2016V3.19873V3.19586V3.193V3.19015V3.1873V3.18446V3.18162V3.17879V3.17597V3.17316V3.17035V3.16755V3.16475V3.16196V3.15918V3.1564V3.15363V3.15087V3.14811V3.14536V3.14261V3.13987V3.13713V3.1344V3.13168V3.12896V3.12625V3.12354V3.12083V3.11814V3.11545V3.11276V3.11008V3.1074V3.10473V3.10206V3.0994V3.09675V3.09409V3.09145V3.0888V3.08617V3.08353V3.0809V3.07828V3.07566V3.07304V3.07043V3.06783V3.06522V3.06262V3.06003V3.05744V3.05485V3.05227V3.04969V3.04711V3.04454V3.04197V3.03941V3.03685V3.03429V3.03173V3.02918V3.02664V3.02409V3.02155V3.01901V3.01648V3.01394V3.01141V3.00889V3.00636V3.00384V3.00132V2.99881V2.9963V2.99378V2.99128V2.98877V2.98627V2.98377V2.98127V2.97877V2.97628V2.97378V2.97129V2.9688V2.96632V2.96383V2.96135V2.95887V2.95639V2.95391V2.95143V2.94896V2.94648V2.94401V2.94154V2.93907V2.9366V2.93413V2.93166V2.9292V2.92673V2.92427V2.92181V2.91934V2.91688V2.91442V2.91196V2.9095V2.90704V2.90458V2.90212V2.89966V2.89721V2.89475V2.89229V2.88983V2.88737V2.88491V2.88246V2.88V2.87754V2.87508V2.87262V2.87016V2.8677V2.86524V2.86278V2.86032V2.85785V2.85539V2.85293V2.85046V2.848V2.84553V2.84306V2.84059V2.83812V2.83565V2.83318V2.8307V2.82823V2.82575V2.82327V2.82079V2.81831V2.81582V2.81334V2.81085V2.80836V2.80587V2.80338V2.80088V2.79838V2.79588V2.79338V2.79088V2.78837V2.78586V2.78335V2.78084V2.77832V2.7758V2.77328V2.77076V2.76823V2.7657V2.76317V2.76063V2.75809V2.75555V2.753V2.75046V2.7479V2.74535V2.74279V2.74023V2.73766V2.73509V2.73252V2.72994V2.72736V2.72478V2.72219V2.7196V2.717V2.7144V2.7118V2.70919V2.70658C10.4946 2.17379 10.6351 1.62835 10.8654 1.28289C11.0569 0.995685 11.4449 0.918076 11.7321 1.10955C12.0193 1.30102 12.0969 1.68906 11.9055 1.97627C11.8839 2.00857 11.8406 2.0957 11.8034 2.23894C11.7678 2.37602 11.7446 2.53849 11.7446 2.70658V2.70919V2.7118V2.7144V2.717V2.7196V2.72219V2.72478V2.72736V2.72994V2.73252V2.73509V2.73766V2.74023V2.74279V2.74535V2.7479V2.75046V2.753V2.75555V2.75809V2.76063V2.76317V2.7657V2.76823V2.77076V2.77328V2.7758V2.77832V2.78084V2.78335V2.78586V2.78837V2.79088V2.79338V2.79588V2.79838V2.80088V2.80338V2.80587V2.80836V2.81085V2.81334V2.81582V2.81831V2.82079V2.82327V2.82575V2.82823V2.8307V2.83318V2.83565V2.83812V2.84059V2.84306V2.84553V2.848V2.85046V2.85293V2.85539V2.85785V2.86032V2.86278V2.86524V2.8677V2.87016V2.87262V2.87508V2.87754V2.88V2.88246V2.88491V2.88737V2.88983V2.89229V2.89475V2.89721V2.89966V2.90212V2.90458V2.90704V2.9095V2.91196V2.91442V2.91688V2.91934V2.92181V2.92427V2.92673V2.9292V2.93166V2.93413V2.9366V2.93907V2.94154V2.94401V2.94648V2.94896V2.95143V2.95391V2.95639V2.95887V2.96135V2.96383V2.96632V2.9688V2.97129V2.97378V2.97628V2.97877V2.98127V2.98377V2.98627V2.98877V2.99128V2.99378V2.9963V2.99881V3.00132V3.00384V3.00636V3.00889V3.01141V3.01394V3.01648V3.01901V3.02155V3.02409V3.02664V3.02918V3.03173V3.03429V3.03685V3.03941V3.04197V3.04454V3.04711V3.04969V3.05227V3.05485V3.05744V3.06003V3.06262V3.06522V3.06783V3.07043V3.07304V3.07566V3.07828V3.0809V3.08353V3.08617V3.0888V3.09145V3.09409V3.09675V3.0994V3.10206V3.10473V3.1074V3.11008V3.11276V3.11545V3.11814V3.12083V3.12354V3.12625V3.12896V3.13168V3.1344V3.13713V3.13987V3.14261V3.14536V3.14811V3.15087V3.15363V3.1564V3.15918V3.16196V3.16475V3.16755V3.17035V3.17316V3.17597V3.17879V3.18162V3.18446V3.1873V3.19015V3.193V3.19586V3.19873V3.2016V3.20449V3.20738V3.21027V3.21318V3.21609V3.21901V3.22193V3.22486V3.2278V3.23075V3.23371V3.23667V3.23964V3.24262V3.24561V3.2486V3.2516V3.25462V3.25763V3.26066V3.2637V3.26674V3.26979V3.27285V3.27592V3.279V3.28208V3.28517V3.28828V3.29139V3.29451V3.29764V3.30077V3.30392V3.30708V3.31024V3.31342V3.3166V3.31979V3.32299V3.3262V3.32942V3.33265V3.33589V3.33914V3.3424V3.34567V3.34895V3.35224V3.35553V3.35884V3.36216V3.36549V3.36883V3.37217V3.37553V3.3789V3.38228V3.38567V3.38907V3.39248V3.3959V3.39933V3.40278V3.40623V3.40969V3.41317V3.41665V3.42015V3.42366V3.42718V3.43071V3.43425V3.4378V3.44137V3.44494V3.44853V3.45213V3.45574V3.45936V3.46299V3.46664V3.4703V3.47396V3.47765V3.48134V3.48504V3.48876V3.49249V3.49623V3.49998V3.50375V3.50753V3.51132V3.51512V3.51894V3.52277V3.52661V3.53046V3.53433V3.53821V3.5421V3.54601V3.54993V3.55386V3.55781V3.56176V3.56574V3.56972V3.57372V3.57773V3.58176V3.58579V3.58985V3.59391V3.59799V3.60209V3.6062V3.61032V3.61445V3.6186V3.62277V3.62694V3.63114V3.63534V3.63956V3.6438V3.64805V3.65231V3.65659V3.66088V3.66519V3.66951V3.67385V3.6782V3.68257V3.68695V3.69135V3.69576V3.70019V3.70463V3.70909V3.71357V3.71806V3.72256V3.72708V3.73161V3.73617V3.74073V3.74532V3.74991V3.75453V3.75916V3.7638V3.76847V3.77314V3.77784V3.78255V3.78728V3.79202V3.79678V3.80155V3.80635V3.81116V3.81598V3.82082V3.82568V3.83056V3.83545V3.84036V3.84529V3.85023V3.85519V3.86017V3.86516V3.87018V3.87521V3.88025V3.88532V3.8904V3.8955V3.90062V3.90575V3.9109V3.91607V3.92126V3.92647V3.93169V3.93694V3.9422V3.94747V3.95277V3.95809V3.96342V3.96877V3.97414V3.97953V3.98494V3.99036V3.99581V4H13C13.2652 4 13.5196 3.89464 13.7071 3.70711C13.8946 3.51957 14 3.26522 14 3V2.25C14 1.65326 13.7629 1.08097 13.341 0.65901C12.919 0.237053 12.3467 0 11.75 0H5.5ZM4.70654 4C4.70654 3.65482 4.98636 3.375 5.33154 3.375H8.16845C8.51363 3.375 8.79345 3.65482 8.79345 4C8.79345 4.34518 8.51363 4.625 8.16845 4.625H5.33154C4.98636 4.625 4.70654 4.34518 4.70654 4ZM5.33154 6.1333C4.98636 6.1333 4.70654 6.41312 4.70654 6.7583C4.70654 7.10348 4.98636 7.3833 5.33154 7.3833H8.16845C8.51363 7.3833 8.79345 7.10348 8.79345 6.7583C8.79345 6.41312 8.51363 6.1333 8.16845 6.1333H5.33154ZM6.32646 11.5V12C6.32646 12.5304 6.53717 13.0391 6.91225 13.4142C7.28732 13.7893 7.79603 14 8.32646 14H2.01801C1.48757 14 0.978865 13.7893 0.603792 13.4142C0.228719 13.0391 0.0180054 12.5304 0.0180054 12V11.5C0.0180054 11.3674 0.0706838 11.2402 0.164452 11.1464C0.25822 11.0527 0.385397 11 0.518005 11H5.82646C5.95907 11 6.08625 11.0527 6.18001 11.1464C6.27378 11.2402 6.32646 11.3674 6.32646 11.5Z" clip-rule="evenodd"></path>
              </svg>
            </div>
          </div> <!-- / .row -->
        </div>
        <div class="card-footer">
          <div class="row justify-content-between">
            <div class="col-auto">
              <!-- Label -->
              <p class="fs-6 text-muted text-uppercase mb-0">
                Tổng <?php echo $total3; ?> khách hàng trên hệ thống
              </p>

              <!-- Comment -->
              <a href="<?php echo base_url() ?>admin/customer" class="fs-5 fw-bold mb-0">
                Nhấn để xem
              </a>
            </div>

          </div> <!-- / .row -->
        </div>
      </div>
    </div>
    <div class="col-lg-6 col-xxl-3 d-flex">

      <!-- Card -->
      <div class="card border-0 flex-fill w-100">
        <div class="card-body">
          <div class="row">
            <div class="col">

              <!-- Title -->
              <h5 class="text-uppercase text-muted fw-semibold mb-2">
                Đơn hàng mới
              </h5>

              <!-- Subtitle -->
              <h2 class="mb-0">
                <?php echo $total4; ?>
              </h2>
            </div>
            <div class="col-auto">

              <!-- Icon -->
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14" height="30" width="30">
                <path fill="#00bac7" fill-rule="evenodd" d="M3.84372 0.752707C3.80524 0.369437 3.48267 0.0776367 3.09747 0.0776367H0.769897C0.355684 0.0776367 0.0198975 0.413423 0.0198975 0.827637C0.0198975 1.24185 0.355684 1.57764 0.769897 1.57764H2.41901L2.67062 4.08355C2.67053 4.10107 2.67136 4.11866 2.67313 4.13626L3.15538 8.93107C3.15622 8.9394 3.15727 8.94772 3.15852 8.956C3.21027 9.29723 3.3836 9.60827 3.64657 9.83179C3.90875 10.0546 4.24242 10.1755 4.58643 10.1724H10.4378C10.7449 10.1853 11.0482 10.099 11.3026 9.926C11.561 9.75029 11.7548 9.49482 11.8544 9.19863L11.8549 9.19706L13.0932 5.47294L13.0935 5.47177C13.1645 5.25656 13.1833 5.02758 13.1485 4.80367C13.1138 4.58055 13.0268 4.36883 12.8946 4.18579C12.7562 3.99162 12.5715 3.8351 12.3572 3.73045C12.1459 3.62726 11.9125 3.57776 11.6777 3.58623H4.12823L3.84372 0.752707ZM11.4249 12.8221C11.4249 12.1716 10.8976 11.6443 10.2471 11.6443C9.59655 11.6443 9.0692 12.1716 9.0692 12.8221C9.0692 13.4726 9.59655 14 10.2471 14C10.8976 14 11.4249 13.4726 11.4249 12.8221ZM5.10107 11.6443C5.75158 11.6443 6.27892 12.1716 6.27892 12.8221C6.27892 13.4726 5.75158 14 5.10107 14C4.45055 14 3.92321 13.4726 3.92321 12.8221C3.92321 12.1716 4.45055 11.6443 5.10107 11.6443Z" clip-rule="evenodd"></path>
              </svg>
            </div>
          </div> <!-- / .row -->
        </div>
        <div class="card-footer">
          <div class="row justify-content-between">
            <div class="col-auto">

              <!-- Label -->
              <p class="fs-6 text-muted text-uppercase mb-0">
                Tổng <?php echo $total4; ?> đơn hàng trên hệ thống
              </p>

              <a href="<?php echo base_url() ?>admin/orders" class="fs-5 fw-bold mb-0">
                Nhấn để xem
              </a>
            </div>

          </div> <!-- / .row -->
        </div>
      </div>
    </div>
    <div class="col-lg-6 col-xxl-3 d-flex">

      <!-- Card -->
      <div class="card border-0 flex-fill w-100">
        <div class="card-body">
          <div class="row">
            <div class="col">

              <!-- Title -->
              <h5 class="text-uppercase text-muted fw-semibold mb-2">
                Sản phẩm mới
              </h5>

              <!-- Subtitle -->
              <h2 class="mb-0">
                <?php echo $total1; ?>
              </h2>
            </div>
            <div class="col-auto">

              <!-- Icon -->
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14" height="30" width="30">
                <path fill="#00bac7" fill-rule="evenodd" d="M0 1.5C0 0.671573 0.671573 0 1.5 0H12.5C13.3284 0 14 0.671573 14 1.5V6.92285H10.5676C10.1008 6.92285 9.64461 7.09458 9.30143 7.41319C8.95669 7.73325 8.75337 8.17772 8.75337 8.6519C8.75337 9.05615 8.58082 9.45415 8.25652 9.75523C7.93065 10.0578 7.47939 10.235 7.00001 10.235C6.52062 10.235 6.06936 10.0578 5.74349 9.75523C5.41919 9.45415 5.24664 9.05615 5.24664 8.6519C5.24664 8.17772 5.04332 7.73325 4.69858 7.41319C4.3554 7.09458 3.89925 6.92285 3.43246 6.92285H0V1.5ZM0 8.17285V12.5C0 13.3284 0.671573 14 1.5 14H12.5C13.3284 14 14 13.3284 14 12.5V8.17285H10.5676C10.4036 8.17285 10.2548 8.23376 10.1519 8.32925C10.0506 8.42329 10.0034 8.54046 10.0034 8.6519C10.0034 9.4189 9.67476 10.1442 9.107 10.6713C8.54081 11.197 7.78219 11.485 7.00001 11.485C6.21783 11.485 5.4592 11.197 4.89301 10.6713C4.32525 10.1442 3.99664 9.4189 3.99664 8.6519C3.99664 8.54046 3.94938 8.42329 3.8481 8.32925C3.74524 8.23376 3.59645 8.17285 3.43246 8.17285H0Z" clip-rule="evenodd"></path>
              </svg>
            </div>
          </div> <!-- / .row -->
        </div>
        <div class="card-footer">
          <div class="row justify-content-between">
            <div class="col-auto">
              <!-- Label -->
              <p class="fs-6 text-muted text-uppercase mb-0">
                Tổng <?php echo $total1; ?> sản phẩm trên hệ thống
              </p>

              <a href="<?php echo base_url() ?>admin/product" class="fs-5 fw-bold mb-0">
                Nhấn để xem
              </a>
            </div>
          </div> <!-- / .row -->
        </div>
      </div>
    </div>
    <div class="col-lg-6 col-xxl-3 d-flex">

      <!-- Card -->
      <div class="card border-0 flex-fill w-100">
        <div class="card-body">
          <div class="row">
            <div class="col">

              <!-- Title -->
              <h5 class="text-uppercase text-muted fw-semibold mb-2">
                Bài viết mới
              </h5>

              <!-- Subtitle -->
              <h2 class="mb-0">
                <?php echo $total2; ?>
              </h2>
            </div>
            <div class="col-auto">

              <!-- Icon -->
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14" height="30" width="30">
                <path fill="#00bac7" fill-rule="evenodd" d="M6.875 0H2.5C2.10218 0 1.72064 0.158035 1.43934 0.43934C1.15804 0.720644 1 1.10218 1 1.5V12.5C1 12.8978 1.15804 13.2794 1.43934 13.5607C1.72064 13.842 2.10217 14 2.5 14H11.5C11.8978 14 12.2794 13.842 12.5607 13.5607C12.842 13.2794 13 12.8978 13 12.5V6.125H7.5C7.15482 6.125 6.875 5.84518 6.875 5.5V0ZM12.5821 4.875L8.125 0.417893V4.875H12.5821Z" clip-rule="evenodd"></path>
              </svg>
            </div>
          </div> <!-- / .row -->
        </div>
        <div class="card-footer">
          <div class="row justify-content-between">
            <div class="col-auto">
              <!-- Label -->
              <p class="fs-6 text-muted text-uppercase mb-0">
                Tổng <?php echo $total2; ?> bài viết trên hệ thống
              </p>

              <a href="<?php echo base_url() ?>admin/content" class="fs-5 fw-bold mb-0">
                Nhấn để xem
              </a>
            </div>
          </div> <!-- / .row -->
        </div>
      </div>
    </div>
  </div> <!-- / .row -->

  <div class="row">
    <div class="col-xxl-9 d-flex">

      <!-- Card -->
      <div class="card border-0 flex-fill w-100" data-list='{"valueNames": ["name", "price", "quantity", "amount", {"name": "sales", "attr": "data-sales"}], "page": 5}' id="topSellingProducts">
        <div class="card-header border-0 card-header-space-between">
          <!-- Title -->
          <h2 class="card-header-title h4 text-uppercase">
            Top sản phẩm bán chạy
          </h2>
          <!-- Link -->
          <a href="<?php echo base_url() ?>admin/product" class="small fw-bold">
            Xem tất cả
          </a>
        </div>

        <div class="table-responsive">
          <table class="table table-hover table-bordered mb-0" data-list='{"valueNames": ["id", "name", "manager", "status"]}'>
            <thead class="thead-light">
              <tr>
                <th class="w-100px">
                  <a href="javascript: void(0);" class="text-muted list-sort">
                    Hình ảnh
                  </a>
                </th>
                <th class="min-w-200px">
                  <a href="javascript: void(0);" class="text-muted list-sort">
                    Tên sản phẩm
                  </a>
                </th>
                <th class="min-w-200px">
                  <a href="javascript: void(0);" class="text-muted list-sort">
                    Mã sản phẩm
                  </a>
                </th>
                <th class="min-w-200px">
                  <a href="javascript: void(0);" class="text-muted list-sort">
                    Giá sản phẩm
                  </a>
                </th>
                <th class="min-w-100px">
                  <a href="javascript: void(0);" class="text-muted list-sort">
                    Đã bán
                  </a>
                </th>
              </tr>
            </thead>
            <tbody class="list">
              <?php
              $product_sale = $this->Mproduct->product_selling(5);
              foreach ($product_sale as $row) : ?>
                <tr>
                  <td class="id"><img src="public/images/products/<?php echo $row['avatar'] ?>" width="50px" height="50px" alt=""></td>
                  <td><?php echo $row['name'] ?></td>
                  <td class="manager"><?php echo $row['sku'] ?></td>
                  <td class="manager fw-bold" style="color:red"><?php echo (number_format($row['price'])); ?> đ</td>
                  <td class="manager"><?php echo $row['number_buy'] ?></td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="col-xxl-3 d-flex">

      <!-- Card -->
      <div class="card border-0 flex-fill w-100">
        <div class="card-header border-0 border-0 card-header-space-between">

          <!-- Title -->
          <h2 class="card-header-title h4 text-uppercase">
            Đơn hàng mới nhất
          </h2>

          <!-- Link -->
          <a href="<?php echo base_url() ?>admin/orders" class="small fw-bold">
            Xem tất cả
          </a>
        </div>

        <!-- Table -->
        <div class="table-responsive">
          <table class="table table-sm table-hover align-middle mb-0">
            <thead class="thead-light">
              <tr>
                <th class="min-w-200px">Tên khách hàng</th>
                <th class="min-w-100px text-end">Tổng tiền</th>
              </tr>
            </thead>

            <tbody>
              <?php
              $new_order = $this->Morders->new_orders(7);
              foreach ($new_order as $row) : ?>
                <tr>
                  <td>
                    <div class="d-flex align-items-center">
                      <div class="d-flex flex-column">
                        <span class="fw-bold d-block"><?php echo $row['fullname'] ?></span>
                        <span class="fs-6 text-muted"><?php echo date("d/m/Y  h:i:s A", strtotime($info['orderdate']));  ?></span>
                      </div>
                    </div>
                  </td>
                  <td class="text-end">
                    <div class="fw-bold" style="color:red"><?php echo (number_format($row['money'])); ?> đ</div>
                    <span class="fs-6" style="color:blue">#<?php echo $row['orderCode'] ?></span>
                  </td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div> <!-- / .table-responsive -->
      </div>
    </div>
    <div class="col-xxl-12 d-flex">

<!-- Card -->
<div class="card border-0 flex-fill w-100" data-list='{"valueNames": ["name", "price", "quantity", "amount", {"name": "sales", "attr": "data-sales"}], "page": 5}' id="topSellingProducts">
  <div class="card-header border-0 card-header-space-between">
    <!-- Title -->
    <h2 class="card-header-title h4 text-uppercase">
      Sản phẩm sắp hết hàng
    </h2>
    <!-- Link -->
    <a href="<?php echo base_url() ?>admin/product" class="small fw-bold">
      Xem tất cả
    </a>
  </div>

  <div class="table-responsive">
    <table class="table table-hover table-bordered mb-0" data-list='{"valueNames": ["id", "name", "manager", "status"]}'>
      <thead class="thead-light">
        <tr>
          <th class="w-100px">
            <a href="javascript: void(0);" class="text-muted list-sort">
              Hình ảnh
            </a>
          </th>
          <th class="min-w-200px">
            <a href="javascript: void(0);" class="text-muted list-sort">
              Tên sản phẩm
            </a>
          </th>
          <th class="min-w-200px">
            <a href="javascript: void(0);" class="text-muted list-sort">
              Mã sản phẩm
            </a>
          </th>
          <th class="min-w-200px">
            <a href="javascript: void(0);" class="text-muted list-sort">
              Giá sản phẩm
            </a>
          </th>
          <th class="min-w-200px">
            <a href="javascript: void(0);" class="text-muted list-sort">
              Danh mục sản phẩm
            </a>
          </th>
          <th class="min-w-150px">
            <a href="javascript: void(0);" class="text-muted list-sort">
              Tồn kho
            </a>
          </th>
          <th class="min-w-150px">
            <a href="javascript: void(0);" class="text-muted list-sort">
              Đã bán
            </a>
          </th>
          <th class="min-w-150px">
            <a href="javascript: void(0);" class="text-muted list-sort">
              Còn lại
            </a>
          </th>
         
        </tr>
      </thead>
      <tbody class="list">
        <?php
        $product_sale = $this->Mproduct->product_outstock(5);
        foreach ($product_sale as $row) : ?>
          <tr>
            <td class="id"><img src="public/images/products/<?php echo $row['avatar'] ?>" width="50px" height="50px" alt=""></td>
            <td><?php echo $row['name'] ?></td>
            <td class="manager"><?php echo $row['sku'] ?></td>
            <td class="manager fw-bold" style="color:red"><?php echo (number_format($row['price'])); ?> đ</td>
            <?php 
													$namecat = $this->Mcategory->category_name($row['catid']);
													?>
            <td class="manager"><?php echo $namecat ?></td>
            <td class="manager"><?php echo $row['number_buy'] ?></td>
            <td class="manager"><?php echo $row['number'] ?></td>
            <td class="manager fw-bold" style="color:red"><?php echo $row['number'] - $row['number_buy'] ?> </td>
         
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </div>
</div>
</div>
  </div> <!-- / .row -->
  

</div> <!-- / .container-fluid -->