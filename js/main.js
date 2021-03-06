// Generated by CoffeeScript 1.7.1
(function() {
  $(function() {
    var aboutTemplate, afterLoginTemplate, beforeLoginTemplate, contactTemplate, events, eventsTemplate, helpTemplate, jobsTemplate, loginNav, main, newEventTemplate, newsTemplate, privacyTemplate, profileTemplate, reviewsTemplate, setActive, termsTemplate, unsetActive;
    events = [
      {
        title: "Sed magna purus fermentum",
        artist: "Jane Woof",
        venue: "HK Gallery",
        date: "5-30-14",
        description: "Cras varius. Curabitur vestibulum aliquam leo. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.",
        poster: "assets/images/art-show.jpg"
      }, {
        title: "Cras ultricies mi",
        artist: "Billy Bob",
        venue: "Central Library",
        date: "5-31-14",
        description: "Nulla porta dolor. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Sed a libero.",
        poster: "assets/images/banzal-art.jpg"
      }, {
        title: "Curabitur blandit mollis lacus",
        artist: "Jeff Steam",
        venue: "HK History Museum",
        date: "5-31-14",
        description: "Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Quisque id odio. Vivamus aliquet elit ac nisl.",
        poster: "assets/images/hkhm.png"
      }, {
        title: "Donec quam felis ultricies",
        artist: "Turpis Morbi",
        venue: "HK Museum of Art",
        date: "5-31-14",
        description: "Fusce a quam. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Morbi mattis ullamcorper velit.",
        poster: "assets/images/hkma.png"
      }, {
        title: "Morbi mattis ullamcorper",
        artist: "Sem Libero",
        venue: "HK Modern Museum",
        date: "5-31-14",
        description: "Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
        poster: "assets/images/hkmm.png"
      }, {
        title: "Sed lectus",
        artist: "Sit Amet",
        venue: "HK Science Museum",
        date: "5-31-14",
        description: "Vestibulum fringilla pede sit amet augue. Nulla consequat massa quis enim. Curabitur at lacus ac velit ornare lobortis.",
        poster: "assets/images/hksm.jpg"
      }
    ];
    unsetActive = function() {
      $('#header-navlinks').children().removeClass('active');
      return $('#login-nav').children().children().removeClass('active');
    };
    setActive = function(lnk) {
      lnk = $(lnk);
      unsetActive();
      return lnk.parent().addClass('active');
    };
    eventsTemplate = Handlebars.compile($("#events-template").html());
    newsTemplate = Handlebars.compile($("#news-template").html());
    reviewsTemplate = Handlebars.compile($("#reviews-template").html());
    helpTemplate = Handlebars.compile($("#help-template").html());
    aboutTemplate = Handlebars.compile($("#about-template").html());
    jobsTemplate = Handlebars.compile($("#jobs-template").html());
    contactTemplate = Handlebars.compile($("#contact-template").html());
    termsTemplate = Handlebars.compile($("#terms-template").html());
    privacyTemplate = Handlebars.compile($("#privacy-template").html());
    main = $('#main');
    main.html(eventsTemplate({
      events: events
    }));
    beforeLoginTemplate = Handlebars.compile($("#before-login-template").html());
    afterLoginTemplate = Handlebars.compile($("#after-login-template").html());
    profileTemplate = Handlebars.compile($("#profile-template").html());
    newEventTemplate = Handlebars.compile($("#new-event-template").html());
    loginNav = $('#login-nav');
    loginNav.html(beforeLoginTemplate);
    $('#header-navlinks').on('click', '#events-link', function(e) {
      e.preventDefault();
      setActive(this);
      return main.html(eventsTemplate({
        events: events
      }));
    });
    $('#header-navlinks').on('click', '#news-link', function(e) {
      e.preventDefault();
      setActive(this);
      return main.html(newsTemplate());
    });
    $('#header-navlinks').on('click', '#reviews-link', function(e) {
      e.preventDefault();
      setActive(this);
      return main.html(reviewsTemplate());
    });
    $('#footer-navlinks').on('click', '#help-link', function(e) {
      e.preventDefault();
      main.html(helpTemplate());
      return unsetActive();
    });
    $('#footer-navlinks').on('click', '#about-link', function(e) {
      e.preventDefault();
      main.html(aboutTemplate());
      return unsetActive();
    });
    $('#footer-navlinks').on('click', '#jobs-link', function(e) {
      e.preventDefault();
      main.html(jobsTemplate());
      return unsetActive();
    });
    $('#footer-navlinks').on('click', '#contact-link', function(e) {
      e.preventDefault();
      main.html(contactTemplate());
      return unsetActive();
    });
    $('#footer-navlinks').on('click', '#terms-link', function(e) {
      e.preventDefault();
      main.html(termsTemplate());
      return unsetActive();
    });
    $('#footer-navlinks').on('click', '#privacy-link', function(e) {
      e.preventDefault();
      main.html(privacyTemplate());
      return unsetActive();
    });
    $('#login-nav').on('click', 'button', function(e) {
      e.preventDefault();
      return loginNav.html(afterLoginTemplate());
    });
    $('#login-nav').on('click', '#before-login-link', function(e) {
      e.preventDefault();
      loginNav.html(beforeLoginTemplate());
      return main.html(eventsTemplate());
    });
    $('#login-nav').on('click', '#profile-link', function(e) {
      e.preventDefault();
      main.html(profileTemplate());
      return setActive(this);
    });
    $('#login-nav').on('click', '#new-event-link', function(e) {
      e.preventDefault();
      main.html(newEventTemplate());
      return setActive(this);
    });
    $('#paid-event').on('click', function(e) {
      return $('#event-price-show').removeClass('hide');
    });
    return $('#free-event').on('click', function(e) {
      return $('#event-price-show').addClass('hide');
    });
  });

}).call(this);

//# sourceMappingURL=main.map
