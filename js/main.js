// Generated by CoffeeScript 1.7.1
(function() {
  $(function() {
    var aboutTemplate, afterLoginTemplate, beforeLoginTemplate, contactTemplate, eventsTemplate, helpTemplate, jobsTemplate, loginNav, main, newEventTemplate, newsTemplate, privacyTemplate, profileTemplate, reviewsTemplate, setActive, termsTemplate, unsetActive;
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
    main.html(eventsTemplate);
    beforeLoginTemplate = Handlebars.compile($("#before-login-template").html());
    afterLoginTemplate = Handlebars.compile($("#after-login-template").html());
    profileTemplate = Handlebars.compile($("#profile-template").html());
    newEventTemplate = Handlebars.compile($("#new-event-template").html());
    loginNav = $('#login-nav');
    loginNav.html(beforeLoginTemplate);
    $('#header-navlinks').on('click', '#events-link', function(e) {
      e.preventDefault();
      setActive(this);
      return main.html(eventsTemplate());
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
    return $('#login-nav').on('click', '#new-event-link', function(e) {
      e.preventDefault();
      main.html(newEventTemplate());
      return setActive(this);
    });
  });

}).call(this);

//# sourceMappingURL=main.map
