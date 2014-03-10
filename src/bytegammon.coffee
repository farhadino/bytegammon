root = global ? window

isInside = (one, two) ->
    one.offset().left >= two.offset().left &&
      one.offset().top >= two.offset().top &&
      one.offset().top + one.height() <= two.offset().top + two.height() &&
      one.offset().left + one.width() <= two.offset().left + two.width()

if root.Meteor.isClient
  root.Template.hello.greeting = ->
    "Welcome to bytegammon."

  root.Template.hello.events = "click input": ->
    alert "You pressed the button"

  $ ->
    $('#hello').css('display', 'none')
    $('#hello').delay(100).fadeIn(1000)

    $('.point').draggable
      drag: (event, ui) ->
        thisVar = $(this)
      #this.addClass('valid')

      revert: 'invalid'
      revertDuration: 200

    $('.pointDrop').droppable
      accept: ".valid"

    console.debug "hello"

if Meteor.isServer
  Meteor.startup = ->
    # code to run on server at startup
