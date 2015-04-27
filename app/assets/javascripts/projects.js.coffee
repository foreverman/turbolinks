ready = ->
  $('.edit_task input[type=checkbox]').click ->
    $(this).parent('form').submit()

$(document).ready(ready);
$(document).on('page:load', ready)
