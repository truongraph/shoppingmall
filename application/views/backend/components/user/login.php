<html lang="">

<head>
    <base href="<?php echo base_url(); ?>">
    </base>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hệ thống quản lý cơ sở dữ liệu</title>
    <!-- Theme CSS -->
    <link rel="stylesheet" href="public/backend_area/assets/css/theme.bundle.css" id="stylesheetLTR">
    <link rel="stylesheet" href="public/backend_area/assets/css/theme.rtl.bundle.css" id="stylesheetRTL">
    <link rel="stylesheet" href="public/backend_area/assets/css/custombackend.css">

    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&amp;display=swap">
    <link rel="stylesheet" media="print" onload="this.onload=null;this.removeAttribute('media');" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&amp;display=swap">

    <!-- no-JS fallback -->
    <noscript>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&amp;display=swap">
    </noscript>

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


    <!-- MAIN CONTENT -->
    <main class="container">
        <div class="row align-items-center justify-content-center vh-100">
            <div class="col-11 col-sm-8 col-md-6 col-lg-5 col-xl-4 col-xxl-3 py-6 bg-white rounded-2 shadow">
                <!-- Title -->
                <h3 class="mb-2 text-center">
                    Đăng nhập quản trị
                </h3>
 <!-- Subtitle -->
 <p class="text-secondary text-center mb-5">
                      Nhập tên tài khoản và mật khẩu để vào quản trị
                    </p>
                <!-- Form -->
                <form name="form1" action="admin/user/login.html" method="post" role="form" class="mb-0">
                <?php if (isset($error)) : ?>
                                <div class="error mb-3">
                                   <p> <?php echo $error; ?></p>
                                </div>
                            <?php endif; ?>
                    <div class="row">
                        <div class="col-12">
                            <div class="mb-4">


                                <!-- Input -->
                                <input type="text" name="username" class="form-control" placeholder="Tên tài khoản">
                                <div class="error" id="password_error"><?php echo form_error('username') ?></div>
                            </div>
                        </div>

                        <div class="col-12">
                            <!-- Password -->
                            <div class="mb-4">

                                <div class="row">
                                    <div class="col">

                                    </div>
                                </div> <!-- / .row -->

                                <!-- Input -->
                                <div class="input-group input-group-merge">
                                    <input type="password" name="password" class="form-control  " autocomplete="off" data-toggle-password-input placeholder="Mật khẩu của bạn">

                                    <button type="button" class="input-group-text px-4 text-dark bg-white " data-toggle-password></button>
                                   
                                </div>
                                <div class="error" id="password_error"><?php echo form_error('password') ?></div>
                            </div>
                        </div>
                    </div> <!-- / .row -->

                    <div class="row align-items-center text-center">
                        <div class="col-12">

                            <!-- Button -->
                            <button type="submit" class="btn w-100 btn-primary mt-1 mb-2">Đăng nhập</button>
                        </div>

                    
                    </div> <!-- / .row -->
                    
                </form>
                
            </div>
            
        </div> <!-- / .row -->
        
    </main> <!-- / main -->

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
    <script src="public/backend_area/assets/js/theme.bundle.js"></script>
    <script>
        $('.error').delay(2000).hide(0); 
    </script>
</body>

</html>