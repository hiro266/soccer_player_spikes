$(function () {
  new Swiper('.swiper-container', {
    spaceBetween: 30,
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    // タブ切り替え時にもswiperを反映させる
    observer: true,
    observeParents: true,
  })
})
