$ ->

  # $('#advanced-fields').hide()

  # Handlebars.registerHelper 'latestMessage', (messages, options) ->
  #   if messages and messages.length > 0
  #     messages[messages.length - 1].message
  #   else
  #     new Handlebars.SafeString( "<span class=\"no-messages\">No messages yet.</span>" )

  unsetActive = () ->
    $('#header-navlinks').children().removeClass('active')

  setActive = (lnk) ->
    lnk = $(lnk)
    unsetActive()
    lnk.parent().addClass('active')
  
  eventsTemplate = Handlebars.compile $("#events-template").html()
  newsTemplate = Handlebars.compile $("#news-template").html()
  reviewsTemplate = Handlebars.compile $("#reviews-template").html()
  
  main = $('#main')
  main.html eventsTemplate

  $('#header-navlinks').on 'click', '#events-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html eventsTemplate()

  $('#header-navlinks').on 'click', '#news-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html newsTemplate()
    
  $('#header-navlinks').on 'click', '#reviews-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html reviewsTemplate()