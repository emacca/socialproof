var wobble = function() {
  $("#bird").removeClass('slideOutLeft');
  $('#bird').addClass('animated wobble');
  var f = $('.feed');
  f.removeClass('hide');
  f.animate({left:'23%'}, {duration:300, queue: false});
  f.animate({width:'66%'}, {duration:300, queue: false});
  f.animate({bottom:'93%'}, {duration:300, queue: false});
  f.animate({height:'85%'}, {duration:300, queue: false});
  $('.refresh').fadeIn(800);
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
  m.animate({left:'57%'}, {duration:900, queue: false});
  m.animate({bottom:'97%'}, {duration:900, queue: false});
  m.delay(900).fadeOut(200);
}

var music = function() {
  note1();
  setTimeout(note2, 200);
}

var initTwit= function(e) {
  e.preventDefault();
  console.log('initiated!');
  $(".hovmessage").css('visibility', 'hidden');
  $(this).addClass('tweet');
  setTimeout(music, 300);
  setTimeout(move, 1500);
}


var instaWobble = function() {
  $("#insta").removeClass('slideOutLeft');
  $('#insta').addClass('animated wobble');
  var f = $('.feed2');
  f.removeClass('hide');
  f.animate({left:'23%'}, {duration:300, queue: false});
  f.animate({width:'66%'}, {duration:300, queue: false});
  f.animate({bottom:'93%'}, {duration:300, queue: true});
  f.animate({height:'85%'}, {duration:300, queue: false});
  $('.refresh2').fadeIn(800);
}
var instaMove = function() {
  $("#insta").addClass('animated slideOutLeft');
  setTimeout(instaWobble, 300);
}
var initInsta = function() {
  console.log('initiating insta!');
  $(".hovmessage2").css('visibility', 'hidden');
  $("#white").addClass('flash').fadeOut(2000);
  setTimeout(instaMove, 1700);
}

var appear = function() {
  $(".hovmessage").fadeIn(200);
}

var disappear = function() {
  $(".hovmessage").fadeOut(200);
}

var appear2 = function() {
  $(".hovmessage2").fadeIn(200);
}

var disappear2 = function() {
  $(".hovmessage2").fadeOut(200);
}

$("#bird").on('mouseover', appear);
$("#bird").on('mouseleave', disappear);
$("#bird").on('click', initTwit);
$("#insta").on('mouseover', appear2);
$("#insta").on('mouseleave', disappear2);
$("#insta").on('click', initInsta);
