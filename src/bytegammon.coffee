root = global ? window

if root.Meteor.isClient
  root.Template.hello.greeting = ->
    "Welcome to bytegammon."
    
  $ ->
    $('#hellosir').fitText
    $('#hello').css('display', 'none')
    $('#hello').delay(100).fadeIn(1000)
    console.debug "hello"

  root.Template.hello.events = "click input": ->
    alert "You pressed the button"


if Meteor.isServer
  Meteor.startup = ->
    # code to run on server at startup
