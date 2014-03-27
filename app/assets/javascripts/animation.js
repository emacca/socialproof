var wobble = function() {
  $("#bird").removeClass('slideOutLeft');
  $('#bird').addClass('animated wobble');
  var f = $('.feed');
  f.removeClass('hide');
  f.animate({left:'27%'}, {duration:300, queue: false});
  f.animate({width:'66%'}, {duration:300, queue: false});
  f.animate({bottom:'93%'}, {duration:300, queue: false});
  f.animate({height:'85%'}, {duration:300, queue: false});
}

var move = function() {
  $("#bird").addClass('animated slideOutLeft');
   setTimeout(wobble, 400);
   
}

var note1 = function() {
  var m = $("#note1");
  m.removeClass('hide');
  m.animate({left:'57%'}, {duration:500, queue: false});
  m.animate({bottom:'97%'}, {duration:500, queue: false});
  m.delay(500).fadeOut(200);
}

var note2 = function() {
  var m = $("#note2");
  m.removeClass('hide');
  m.animate({left:'57%'}, {duration:500, queue: false});
  m.animate({bottom:'97%'}, {duration:500, queue: false});
  m.delay(500).fadeOut(200);
}

var music = function() {
  note1();
  setTimeout(note2, 200);
}

var initTwit= function(e) {
  e.preventDefault();
  console.log('initiated!');
  $(this).addClass('tweet');
  setTimeout(music, 300);
  setTimeout(move, 1500);
}


var instaWobble = function() {
  $("#insta").removeClass('slideOutLeft');
  $('#insta').addClass('animated wobble');
  var f = $('.feed2');
  f.removeClass('hide');
  f.animate({left:'27%'}, {duration:300, queue: false});
  f.animate({width:'66%'}, {duration:300, queue: false});
  f.animate({bottom:'93%'}, {duration:300, queue: true});
  f.animate({height:'85%'}, {duration:300, queue: false});
}
var instaMove = function() {
  $("#insta").addClass('animated slideOutLeft');
  setTimeout(instaWobble, 300);
}
var initInsta = function() {
  console.log('initiating insta!');
  $("#white").addClass('flash').fadeOut(2000);
  setTimeout(instaMove, 1700);
}
console.log("emily");
$("#bird").on('click', initTwit);
$("#insta").on('click', initInsta);
