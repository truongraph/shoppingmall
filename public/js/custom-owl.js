
$('.main-content .owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    autoplay: true,
    nav: true,
    navigation: true,
    navText: [
        '<i class="bx bxs-chevron-left" ></i>',
        '<i class="bx bxs-chevron-right"></i>'
    ],
    navContainer: '.main-content .custom-nav',
    items: 1
});
$('.owl-carousel-product').owlCarousel({
    loop: true,
    margin: 10,
    autoplay: true,
    nav: true,
    navigation: true,
    navText: [
        '<i class="bx bxs-chevron-left" ></i>',
        '<i class="bx bxs-chevron-right"></i>'
    ],
    navContainer: '.custom-nav',
    autoplayTimeout: 2500,
    items: 5,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 2
        },
        1000: {
            items: 5
        }
    }
})