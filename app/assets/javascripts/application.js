//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require bootstrap-material-design/dist/js/bootstrap-material-design.js
//= require swiper/js/swiper.js
//= require swiper.js
//= require activestorage

// タブ
$(function () {
  // ①タブをクリックしたら発動
  $('.tab li').click(function () {
    // ②クリックされたタブの数字を変数に格納
    var index = $('.tab li').index(this);
    // ③クリック済みタブのデザインを設定したcssのクラスを一旦削除
    $('.tab li').removeClass('active');
    // ④クリックされたタブにクリック済みデザインを適用する
    $(this).addClass('active');
    // ⑤コンテンツを一旦非表示にし、クリックされた順番のコンテンツのみを表示
    $('.players-area > .container').removeClass('show').eq(index).addClass('show');
  });
});
