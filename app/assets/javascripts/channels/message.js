App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    $('#messages').removeClass('hidden')
    var $textarea = $('form#' + data.uid).find('textarea')
    $textarea.val('');
    $textarea.height('50px')
    $('#messages').animate({ scrollTop: $('#messages')[0].scrollHeight }, 1000);

    $.post(
      '/render_message',
      { nickname: data.nickname, timestamp: data.timestamp, message: data.message },
      function(html) {
        return $('#messages').append(html);
      }
    )
  },
});
