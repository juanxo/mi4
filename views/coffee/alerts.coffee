$ ->
  $('a[href=#js-alert]').click (event)->
    event.preventDefault()

    $this = $(this)
    $alert = $('#js-alert')
    $alert.removeClass('hidden')

    #Show overlay
    $overlay = $('.overlay')
    $overlay.removeClass('hidden')

    #Clean previous active message, if any
    $alert.find('div').removeClass('active')

    #Show the message related to current link
    messageId = "##{$this.attr 'data-type'}"
    $(messageId).addClass('active')
    
    #Center the div in the window
    windowWidth = $(window).width()
    windowHeight = $(window).height()

    alertWidth = $alert.outerWidth()
    alertHeight = $alert.outerHeight()

    left = windowWidth / 2.0 - alertWidth / 2.0
    top = windowHeight / 2.0 - alertHeight / 2.0

    $alert.css 'position', 'absolute'
    $alert.css 'left', left
    $alert.css 'top', top


  $('.overlay').click ->
    $(this).addClass('hidden')
    $('#js-alert').addClass('hidden')

