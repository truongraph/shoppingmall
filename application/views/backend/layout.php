<!DOCTYPE html>
<html>

<head>
  <base href="<?php echo base_url(); ?>">
  </base>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title ?></title>
  <link rel="icon" type="image/x-icon" href="public/images/iconu.png">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Theme CSS -->
  <link rel="stylesheet" href="public/backend_area/assets/css/theme.bundle.css" id="stylesheetLTR">
  <link rel="stylesheet" href="public/backend_area/assets/css/theme.rtl.bundle.css" id="stylesheetRTL">

  <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
  <link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&amp;display=swap">
  <link rel="stylesheet" media="print" onload="this.onload=null;this.removeAttribute('media');" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&amp;display=swap">
  <link rel="stylesheet" href="public/backend_area/assets/css/custombackend.css">
  <link rel="stylesheet" href="public/backend_area/assets/css/albumproduct.scss">
  <!-- no-JS fallback -->
  <noscript>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&amp;display=swap">
  </noscript>



  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  <!-- ✅ load jQuery ✅ -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <!-- ✅ load JS for Select2 ✅ -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js" integrity="sha512-2ImtlRlf2VVmiGZsjm9bEyhjGW4dU7B6TNwh/hx/iSByxNENtj3WVE6o/9Lj4TJeVXPi4bnOIMXFIJJAeufa0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
  <script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
  <script src="public/ckeditor/ckeditor.js"></script>
  <link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
  <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

  <script>
    // Theme switcher

    let themeSwitcher = document.getElementById('themeSwitcher');

    const getPreferredTheme = () => {
      if (localStorage.getItem('theme') != null) {
        return localStorage.getItem('theme');
      }

      return document.documentElement.dataset.theme;
    };

    const setTheme = function(theme) {
      if (theme === 'auto' && window.matchMedia('(prefers-color-scheme: dark)').matches) {
        document.documentElement.dataset.theme = window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
      } else {
        document.documentElement.dataset.theme = theme;
      }

      localStorage.setItem('theme', theme);
    };

    const showActiveTheme = theme => {
      const activeBtn = document.querySelector(`[data-theme-value="${theme}"]`);

      document.querySelectorAll('[data-theme-value]').forEach(element => {
        element.classList.remove('active');
      });

      activeBtn && activeBtn.classList.add('active');

      // Set button if demo mode is enabled
      document.querySelectorAll('[data-theme-control="theme"]').forEach(element => {
        if (element.value == theme) {
          element.checked = true;
        }
      });
    };

    function reloadPage() {
      window.location = window.location.pathname;
    }


    setTheme(getPreferredTheme());

    if (typeof themeSwitcher != 'undefined') {
      window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', e => {
        if (localStorage.getItem('theme') != null) {
          if (localStorage.getItem('theme') == 'auto') {
            reloadPage();
          }
        }
      });

      window.addEventListener('load', () => {
        showActiveTheme(getPreferredTheme());

        document.querySelectorAll('[data-theme-value]').forEach(element => {
          element.addEventListener('click', () => {
            const theme = element.getAttribute('data-theme-value');

            localStorage.setItem('theme', theme);
            reloadPage();
          })
        })
      });
    }
  </script>
  <!-- Favicon -->
  <link rel="icon" href="public/backend_area/assets/favicon/favicon.ico" sizes="any">

  <!-- Demo script -->
  <script>
    var themeConfig = {
      theme: JSON.parse('"light"'),
      isRTL: JSON.parse('false'),
      isFluid: JSON.parse('true'),
      sidebarBehaviour: JSON.parse('"fixed"'),
      navigationColor: JSON.parse('"inverted"')
    };

    var isRTL = localStorage.getItem('isRTL') === 'true',
      isFluid = localStorage.getItem('isFluid') === 'true',
      theme = localStorage.getItem('theme'),
      sidebarSizing = localStorage.getItem('sidebarSizing'),
      linkLTR = document.getElementById('stylesheetLTR'),
      linkRTL = document.getElementById('stylesheetRTL'),
      html = document.documentElement;

    if (isRTL) {
      linkLTR.setAttribute('disabled', '');
      linkRTL.removeAttribute('disabled');
      html.setAttribute('dir', 'rtl');
    } else {
      linkRTL.setAttribute('disabled', '');
      linkLTR.removeAttribute('disabled');
      html.removeAttribute('dir');
    }
  </script>

</head>

<body>
  <!-- THEME CONFIGURATION -->
  <script>
    let themeAttrs = document.documentElement.dataset;

    for (let attr in themeAttrs) {
      if (localStorage.getItem(attr) != null) {
        document.documentElement.dataset[attr] = localStorage.getItem(attr);

        if (theme === 'auto') {
          document.documentElement.dataset.theme = window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';

          window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', e => {
            e.matches ? document.documentElement.dataset.theme = 'dark' : document.documentElement.dataset.theme = 'light';
          });
        }
      }
    }
  </script>




  <!-- ./Vung Header -->
  <?php $this->load->view('backend/modules/menu'); ?>
  <main>
    <!-- Vung Header -->
    <?php $this->load->view('backend/modules/header'); ?>
    <?php
    if (isset($com, $view)) {
      $this->load->view('backend/components/' . $com . '/' . $view);
    }

    ?>
  </main>
  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="public/backend_area/assets/js/theme.bundle.js"></script>
  <script>
    $('.error').delay(2000).hide(0);
    $('.alert').delay(2000).hide(0);
  </script>
  <script>
    $(window).scroll(function() {
      var sticky = $('#myHeader'),
        scroll = $(window).scrollTop();
    });
    toastr.options = {
      'closeButton': true,
      'debug': false,
      'newestOnTop': false,
      'progressBar': false,
      'positionClass': 'toast-top-right',
      'preventDuplicates': false,
      'showDuration': '1000',
      'hideDuration': '1000',
      'timeOut': '5000',
      'extendedTimeOut': '1000',
      'showEasing': 'swing',
      'hideEasing': 'linear',
      'showMethod': 'fadeIn',
      'hideMethod': 'fadeOut',
    }
  </script>
</body>

</html>