$ ->

  # $('#advanced-fields').hide()

  # Handlebars.registerHelper 'latestMessage', (messages, options) ->
  #   if messages and messages.length > 0
  #     messages[messages.length - 1].message
  #   else
  #     new Handlebars.SafeString( "<span class=\"no-messages\">No messages yet.</span>" )

  # unsetActive = () ->
    # $('#header-navlinks').children().removeClass('active')
  unsetActive = (lnk) ->
    # lnk = $(lnk)
    # console.log lnk
    lnk.closest('ul').children().removeClass('active')

  setActive = (lnk) ->
    lnk = $(lnk)
    # console.log lnk.parent().parent().children()
    unsetActive(lnk)
    lnk.parent().addClass('active')
  
  eventsTemplate = Handlebars.compile $("#events-template").html()
  newsTemplate = Handlebars.compile $("#news-template").html()
  reviewsTemplate = Handlebars.compile $("#reviews-template").html()

  helpTemplate = Handlebars.compile $("#help-template").html()
  aboutTemplate = Handlebars.compile $("#about-template").html()
  jobsTemplate = Handlebars.compile $("#jobs-template").html()
  contactTemplate = Handlebars.compile $("#contact-template").html()
  termsTemplate = Handlebars.compile $("#terms-template").html()
  privacyTemplate = Handlebars.compile $("#privacy-template").html()
  
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


  $('#footer-navlinks').on 'click', '#help-link', (e) ->
    e.preventDefault()
    # setActive(@)
    main.html helpTemplate()

  $('#footer-navlinks').on 'click', '#about-link', (e) ->
    e.preventDefault()
    # setActive(@)
    main.html aboutTemplate()

  $('#footer-navlinks').on 'click', '#jobs-link', (e) ->
    e.preventDefault()
    # setActive(@)
    main.html jobsTemplate()

  $('#footer-navlinks').on 'click', '#contact-link', (e) ->
    e.preventDefault()
    # setActive(@)
    main.html contactTemplate()

  $('#footer-navlinks').on 'click', '#terms-link', (e) ->
    e.preventDefault()
    # setActive(@)
    main.html termsTemplate()

  $('#footer-navlinks').on 'click', '#privacy-link', (e) ->
    e.preventDefault()
    # setActive(@)
    main.html privacyTemplate()


