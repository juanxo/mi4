$ ->
  $('.marketplace select').change ->
    $this = $(this)
    $this.parent().find('p').hide()

    #Get the selected option
    $option = $this.find('option:selected')
    $("##{$option.val()}").css('display', 'inline')

  $('.isv-list label').hover ->

    #Get target text container
    $selected = $(this).find('input[type=checkbox]')


    #Show description
    $('.isv-description p').hide()
    $(".isv-description p[data-name=#{$selected.attr('name')}]").show()
    $('.isv-description').show()
  ,->
    #Hide description
    $('.isv-description').hide()
