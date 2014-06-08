$ ->

# --------------------------------------
# LINKS & TEMPLATES

  events = [
    { 
      title: "Sed magna purus fermentum"
      artist: "Jane Woof"
      venue: "HK Gallery"
      date: "5-30-14"
      description: "Cras varius. Curabitur vestibulum aliquam leo. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam." 
      poster: "assets/images/art-show.jpg"
    }
    { 
      title: "Cras ultricies mi"
      artist: "Billy Bob"
      venue: "Central Library"
      date: "5-31-14"
      description: "Nulla porta dolor. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Sed a libero." 
      poster: "assets/images/banzal-art.jpg"
    }
    {
      title: "Curabitur blandit mollis lacus"
      artist: "Jeff Steam"
      venue: "HK History Museum"
      date: "5-31-14"
      description: "Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Quisque id odio. Vivamus aliquet elit ac nisl."
      poster: "assets/images/hkhm.png"
    }
    {
      title: "Donec quam felis ultricies"
      artist: "Turpis Morbi"
      venue: "HK Museum of Art"
      date: "5-31-14"
      description: "Fusce a quam. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Morbi mattis ullamcorper velit."
      poster: "assets/images/hkma.png"
    }
    {
      title: "Morbi mattis ullamcorper"
      artist: "Sem Libero"
      venue: "HK Modern Museum"
      date: "5-31-14"
      description: "Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Lorem ipsum dolor sit amet, consectetuer adipiscing elit."
      poster: "assets/images/hkmm.png"
    }
    {
      title: "Sed lectus"
      artist: "Sit Amet"
      venue: "HK Science Museum"
      date: "5-31-14"
      description: "Vestibulum fringilla pede sit amet augue. Nulla consequat massa quis enim. Curabitur at lacus ac velit ornare lobortis."
      poster: "assets/images/hksm.jpg"
    }
  ]

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
  main.html eventsTemplate(
      events: events
      )

  beforeLoginTemplate = Handlebars.compile $("#before-login-template").html()
  afterLoginTemplate = Handlebars.compile $("#after-login-template").html()
  profileTemplate = Handlebars.compile $("#profile-template").html()
  newEventTemplate = Handlebars.compile $("#new-event-template").html()
  loginNav = $('#login-nav')
  loginNav.html beforeLoginTemplate
# ************************************************
  # main.html newEventTemplate
# ************************************************
  $('#header-navlinks').on 'click', '#events-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html eventsTemplate(
      events: events
      )

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



