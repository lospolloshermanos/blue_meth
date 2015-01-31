$ ->
  $('.nifty_form').submit () ->
    markdown_value = $('#markdown-input').val()
    that = $(this)

    $.ajax 
      url: that.attr("action")
      data: {  markdown: markdown_value }
      contentType: 'application/json'
      success:  (markdown_data) ->
        $('.markdown-preview').html markdown_data.markdown

    false