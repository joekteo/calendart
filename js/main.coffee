$ ->
  $('#advanced-fields').hide()

  Handlebars.registerHelper 'latestMessage', (messages, options) ->
    if messages and messages.length > 0
      messages[messages.length - 1].message
    else
      new Handlebars.SafeString( "<span class=\"no-messages\">No messages yet.</span>" )

  select2Init = ->
   $('#list-of-users').select2()

  unsetActive = () ->
    $('#header-navlinks').children().removeClass('active')

  setActive = (lnk) ->
    lnk = $(lnk)
    unsetActive()
    lnk.parent().addClass('active')

  oneLiners = [
    "I never forget a face, but in your case I'd be glad to make an exception."
    "My Dad used to say 'always fight fire with fire', which is probably why he got thrown out of the fire brigade."
    "Start every day off with a smile and get it over with."
    "This radio lark's a wonderful hobby, y'know. I've got friends all over the world, all over the world... none in this country, but friends all over the world."
    "My wife sent her photograph to the Lonely Hearts Club. They sent it back saying they weren't that lonely."
    "Life is full of misery, loneliness, and suffering - and it's all over much too soon."
    "My definition of an intellectual is someone who can listen to the William Tell Overture without thinking of the Lone Ranger."
    "I'm on a whiskey diet. I've lost three days already."
  ]

  newsTemplate = Handlebars.compile $("#news-template").html()
  roomsTemplate = Handlebars.compile $("#rooms-template").html()
  newRoomTemplate = Handlebars.compile $("#new-room-template").html()
  messageTemplate = Handlebars.compile $("#message-template").html()
  roomTemplate = Handlebars.compile $("#room-template").html()
  linksTemplate = Handlebars.compile $("#links-template").html()
  questionsTemplate = Handlebars.compile $("#questions-template").html()
  uploadsTemplate = Handlebars.compile $("#uploads-template").html()
  usersTemplate = Handlebars.compile $("#users-template").html()
  resultsTemplate = Handlebars.compile $("#results-template").html()

  main = $('#main')

  students = [
    { name: "Al Pacino", avatar: "al_pacino.jpg", icon: "cog" }
    { name: "Alfred Hitchcock", avatar: "alfred_hitchcock.jpg", icon: "cog" }
    { name: "Clint Eastwood", avatar: "clint_eastwood.jpg", icon: "cog" }
    { name: "James Brown", avatar: "james_brown.jpg", icon: "cog" }
    { name: "John Cleese", avatar: "john_cleese.jpg", icon: "cog" }
    { name: "Joseph Stalin", avatar: "joseph_stalin.jpg", icon: "cog" }
    { name: "Mohandas K. Gandhi", avatar: "mohandas_k_gandhi.jpg", icon: "cog" }
    { name: "Muhammad Ali", avatar: "muhammad_ali.jpg", icon: "cog" }
  ]

  instructors = [
    { name: "Albert Einstein", avatar: "albert_einstein.jpg", icon: "wrench" }
    { name: "Boris Karloff", avatar: "boris_karloff.jpg", icon: "wrench" }
    { name: "Diana Spencer", avatar: "diana_spencer.jpg", icon: "wrench" }
  ]

  staff = [
    { name: "Ernesto Guevara", avatar: "ernesto_guevara.jpg", icon: "earphone" }
    { name: "Michelle Obama", avatar: "michelle_obama.jpg", icon: "earphone" }
    { name: "Oprah Winfrey", avatar: "oprah_winfrey.jpg", icon: "earphone" }
    { name: "Quentin Tarantino", avatar: "quentin_tarantino.jpg", icon: "earphone" }
  ]

  users = students.concat(instructors).concat(staff)

  currentUser = students[4]

  tags = [
    "synergy"
    "lisp"
    "lasso"
    "perl"
    "cobol"
    "smalltalk"
    "sql"
    "fortran"
    "asp"
    "scheme"
    "lua"
    "delphi"
    "java"
    "shell"
    "tcl"
    "ruby"
    "erlang"
    "javascript"
    "assembly"
    "brainfuck"
    "c#"
    "ocaml"
    "c++"
    "forth"
    "ada"
    "scala"
    "clojure"
    "php"
    "rexx"
    "pascal"
    "python"
    "haskell"
  ]

  rooms = [
    {
      title: "Lorem ipsum dolor"
      users: students[3..].concat(instructors[0..1]).concat(staff[0..0])
      description: "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui."
      tags: tags[7..12].join(" ")
      archivable: true
      challenges: [
        {
          question: "What is your name?"
          answers: [
            "Lancelot"
            "Sir Robin"
            "Guinevere"
            "Arthur"
            "All of the above"
          ]
        }
        {
          question: "What is your quest?"
          answers: [
            "To explore strange new worlds"
            "To seek out new life and new civilizations"
            "To boldy go where no one has gone before"
            "The Holy Grail"
            "All of the above"
          ]
        }
        {
          question: "What is your favorite color?"
          answers: [
            "Alabaster"
            "Puce"
            "Burnt Sienna"
            "Chartreuse"
            "All of the above"
          ]
        }
      ]
      links: [
        { label: "The Holy Grail", url: "http://www.imdb.com/title/tt0071853/?ref_=fn_al_tt_2", tags: "silly funny" }
        { label: "The Life of Brian", url: "http://www.imdb.com/title/tt0079470/?ref_=fn_al_tt_1", tags: "blasphemous funnier" }
        { label: "The Meaning of Life", url: "http://www.imdb.com/title/tt0085959/?ref_=fn_al_tt_5", tags: "shocking hilarious controversial" }
      ]
      messages: [
        { user: users[3], message: "Three.  Three.  And we'd better not risk another frontal assault, that rabbit's dynamite.", type: "comment" }
        { user: users[5], message: "Would it help to confuse it if we run away more?", type: "question" }
        { user: users[3], message: "Oh, shut up and go and change your armor.", type: "comment" }
        { user: users[7], message: "Let us taunt it!  It may become so cross that it will make a mistake.", type: "comment" }
        { user: users[3], message: "Like what?", type: "question" }
        { user: users[6], message: "We have the Holy Hand Grenade.", type: "answer" }
      ]
    }
    {
      title: "Mauris blandit aliquet"
      users: students[4..6].concat(staff[1..1])
      description: "Curabitur arcu erat, accumsan id imperdiet et."
      tags: tags[2..5].join(" ")
      archivable: true
    }
    {
      title: "Consectetur adipiscing"
      users: students[1..4].concat(instructors[2..2])
      description: "Quisque velit nisi, pretium ut lacinia in."
      tags: tags[17..22].join(" ")
      archivable: true
    }
    {
      title: "Eget tincidunt nibh"
      users: instructors
      description: "Donec rutrum congue leo eget malesuada.  Curabitur non nulla sit amet nisl tempus convallis quis ac lectus."
      tags: tags[27..].join(" ")
      archivable: false
    }
    {
      title: "Nulla quis lorem"
      users: students.concat(instructors).concat(staff[2..3])
      description: "Quisque velit nisi, pretium ut lacinia in, elementum id enim. Mauris blandit aliquet elit."
      tags: tags[6..8].concat(tags[25..27]).join(" ")
      archivable: true
    }
    {
      title: "Libero malesuada"
      users: students[3..6]
      description: "Sed porttitor lectus nibh. Donec rutrum congue leo eget malesuada."
      tags: tags[7..12].join(" ")
      archivable: false
    }
  ]

  main.html roomsTemplate( rooms: rooms )

  goToRoom = (idx) =>
    room = rooms[parseInt(idx)]
    room["rooms"] = rooms
    main.html roomTemplate( room )
    setTimeout(
      -> $('.start-shut').collapse('hide')
      500
    )
    $('#message-input').focus()

  $('header').on 'click', '#rooms-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html roomsTemplate( rooms: rooms )

  $('header').on 'click', '#links-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html linksTemplate()

  $('header').on 'click', '#questions-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html questionsTemplate()

  $('header').on 'click', '#uploads-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html uploadsTemplate()

  $('header').on 'click', '#users-link', (e) ->
    e.preventDefault()
    setActive(@)
    main.html usersTemplate(
      students: students
      instructors: instructors
      staff: staff
    )

  $('header').on 'focus', '#search-field', (e) ->
    $('#advanced-fields').fadeIn()

  $('header').on 'blur', '#search-field', (e) ->
    $('#advanced-fields').fadeOut()

  $('header').on 'submit', '#search-form', (e) ->
    e.preventDefault()
    unsetActive()
    main.html resultsTemplate()

  $('#main').on 'click', '.room-title a, .rooms li a', (e) ->
    e.preventDefault()
    unsetActive()
    idx = $(@).data('room')
    goToRoom idx

  $('#main').on 'click', 'ul.challenges li', (e) ->
    e.preventDefault()
    $(@).find('.answers').toggle('blind')

  postMessage = ->
    message =
      message: $('#message-input').val()
      user: currentUser
      type: 'comment'
    $('#message-input').val ''
    $('#messages-box').append messageTemplate( message )
    setTimeout(
      ->
        message =
          message: oneLiners.pop()
          user: staff[3]
          type: 'comment'
        $('#messages-box').append messageTemplate( message )
      1000
    )

  $('#main').on 'click', '#send-message', (e) ->
    postMessage()

  $('#main').on 'submit', '#say-something', (e) ->
    e.preventDefault()
    postMessage()

  $('#main').on 'click', '#new-room-button', (e) ->
    e.preventDefault()
    unsetActive()
    main.html newRoomTemplate( users: users )

  $('#main').on 'submit', '#new-room-form', (e) ->
    e.preventDefault()
    indices = $(@).find('#list-of-users').val()
    members =
      if indices
        indices.map (idx) ->
          users[parseInt(idx)]
      else
        []
    newRoom =
      title: $(@).find('#room-title').val()
      description: $(@).find('#room-description').val()
      tags: $(@).find('#room-tags').val()
      archivable: $(@).find('input[name=archivable]:checked').val() == "true"
      users: members

    rooms = rooms.concat([newRoom])

    goToRoom rooms.length - 1

   $('#main').on 'click', '#select-all-users', (e) ->
     if $('#select-all-users').is ':checked'
       $('#list-of-users > option').prop 'selected', 'selected'
       $('#list-of-users').trigger 'change'
     else
       $('#list-of-users > option').removeAttr 'selected'
       $('#list-of-users').trigger 'change'

  $('#main').on 'click', '#new-room-button', (e) ->
     e.preventDefault()
     unsetActive()
     main.html newRoomTemplate( users: users )
     select2Init()
