$ ->

# --------------------------------------
# LINKS & TEMPLATES

  unsetActive = () ->
    $('#header-navlinks').children().removeClass('active')
    $('#login-nav').children().children().removeClass('active')

  # unsetActive = (lnk) ->
    # lnk.closest('ul').children().removeClass('active')

  setActive = (lnk) ->
    lnk = $(lnk)
    unsetActive()
    # unsetActive(lnk)
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

  beforeLoginTemplate = Handlebars.compile $("#before-login-template").html()
  afterLoginTemplate = Handlebars.compile $("#after-login-template").html()
  profileTemplate = Handlebars.compile $("#profile-template").html()
  newEventTemplate = Handlebars.compile $("#new-event-template").html()
  loginNav = $('#login-nav')
  loginNav.html beforeLoginTemplate
# ************************************************
  main.html newEventTemplate
# ************************************************
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
    main.html helpTemplate()
    unsetActive()

  $('#footer-navlinks').on 'click', '#about-link', (e) ->
    e.preventDefault()
    main.html aboutTemplate()
    unsetActive()

  $('#footer-navlinks').on 'click', '#jobs-link', (e) ->
    e.preventDefault()
    main.html jobsTemplate()
    unsetActive()

  $('#footer-navlinks').on 'click', '#contact-link', (e) ->
    e.preventDefault()
    main.html contactTemplate()
    unsetActive()

  $('#footer-navlinks').on 'click', '#terms-link', (e) ->
    e.preventDefault()
    main.html termsTemplate()
    unsetActive()

  $('#footer-navlinks').on 'click', '#privacy-link', (e) ->
    e.preventDefault()
    main.html privacyTemplate()
    unsetActive()


  $('#login-nav').on 'click', 'button', (e) ->
    e.preventDefault()
    loginNav.html afterLoginTemplate()

  $('#login-nav').on 'click', '#before-login-link', (e) ->
    e.preventDefault()
    loginNav.html beforeLoginTemplate()
    main.html eventsTemplate()

  $('#login-nav').on 'click', '#profile-link', (e) ->
    e.preventDefault()
    main.html profileTemplate()
    setActive(@)

  $('#login-nav').on 'click', '#new-event-link', (e) ->
    e.preventDefault()
    main.html newEventTemplate()
    setActive(@)

  $('#paid-event').on 'click', (e) ->
    $('#event-price-show').removeClass('hide')
  $('#free-event').on 'click', (e) ->
    $('#event-price-show').addClass('hide')

# --------------------------------------
# ########



