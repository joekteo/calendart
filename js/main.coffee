$ ->

# --------------------------------------
# LINKS & TEMPLATES

  unsetActive = (lnk) ->
    lnk.closest('ul').children().removeClass('active')

  setActive = (lnk) ->
    lnk = $(lnk)
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

  beforeLoginTemplate = Handlebars.compile $("#before-login-template").html()
  afterLoginTemplate = Handlebars.compile $("#after-login-template").html()
  profileTemplate = Handlebars.compile $("#profile-template").html()
  loginNav = $('#login-nav')
  loginNav.html beforeLoginTemplate

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

  $('#footer-navlinks').on 'click', '#about-link', (e) ->
    e.preventDefault()
    main.html aboutTemplate()

  $('#footer-navlinks').on 'click', '#jobs-link', (e) ->
    e.preventDefault()
    main.html jobsTemplate()

  $('#footer-navlinks').on 'click', '#contact-link', (e) ->
    e.preventDefault()
    main.html contactTemplate()

  $('#footer-navlinks').on 'click', '#terms-link', (e) ->
    e.preventDefault()
    main.html termsTemplate()

  $('#footer-navlinks').on 'click', '#privacy-link', (e) ->
    e.preventDefault()
    main.html privacyTemplate()


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

# --------------------------------------
# ########



