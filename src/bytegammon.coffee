root = global ? window

if root.Meteor.isClient
  root.Template.hello.greeting = ->
    "Welcome to bytegammon."

  root.Template.hello.events = "click input": ->
    alert "You pressed the button"

  $ ->
    $('#hello').css('display', 'none')
    $('#hello').delay(100).fadeIn(1000)

    $('.point').draggable
      revert: 'invalid'

    $('.pointDrop').droppable
      accept: ".valid"

    console.debug "hello"

if Meteor.isServer
  Meteor.startup = ->
    # code to run on server at startup
