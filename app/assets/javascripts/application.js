// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require local_time
//= require_tree .
//= require_tree ./channels

$(document).ready(function() {
  $(window).scroll(function() {
    if ( !$('.navbar') ) {
      if ($('.navbar').offset().top > 100) {
        $('.navbar').addClass('fixed')
      } else {
        $('.navbar').removeClass('fixed')
      }
    }
  });

  $(".venue--map").on("click", function () {
    $(".venue--map iframe").css("pointer-events", "auto");
  });

  $(".venue--map").on("mouseleave", function () {
    $(".venue--map iframe").css("pointer-events", "none");
  });

  $('#messages').animate({ scrollTop: $('#messages')[0].scrollHeight }, 1000)

  $('#send-message').click(function() {
    $('#message-content').val('')
  })

  if (window.localStorage) {
    $('textarea:empty').each(function() {
      var data = localStorage[this.name]
      if (data) { this.value = data }
    })

    $(document).on('keyup', 'textarea', function() {
      var that = this
      if (that.autosaveTimeout) { clearTimeout(that.autosaveTimeout) }
      that.autosaveTimeout = setTimeout(function() {
        localStorage[that.name] = that.value
      }, 100)
    })

    $(document).on('submit', 'form', function() {
      $(this).find('textarea').each(function() {
        var that = this
        if (that.autosaveTimeout) { clearTimeout(that.autosaveTimeout) }
        localStorage.removeItem(that.name)
      })
    })
  }
});
