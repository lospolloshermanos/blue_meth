$ ->
  $('.nifty_form').submit () ->
    markdown_value = $('#markdown-input').val()
    that = $(this)

    $.get # $.ajax( method: 'get')
      data: {  markdown: markdown_value }
      contentType: "application/json"
      url: that.attr("action")

    false