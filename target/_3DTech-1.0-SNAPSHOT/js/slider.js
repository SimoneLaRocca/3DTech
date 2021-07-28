$(".slider").slick({
    slidesToShow: 5,
    slideToScroll: 1,
    dots: true,
    autoplay: true,
    autoplaySpeed: 2500,
    centerMode: true,
    pauseOnHover: false,
    pauseOnFocus: false,
    centerPadding: '20px',
    responsive: [
        {
            breakpoint: 1232,
            settings: {
                slidesToShow: 4
            }
        },
        {
            breakpoint: 848,
            settings: {
                slidesToShow: 3,
                arrows: false
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                arrows: false
            }
        },

        {
            breakpoint: 380,
            settings: {
                slidesToShow: 1,
                arrows: false
            }
        }
    ]
})


