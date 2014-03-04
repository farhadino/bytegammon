root = global ? window

if root.Meteor.isClient
  root.Template.hello.greeting = ->
    "Welcome to bytegammon."

  root.Template.hello.events = "click input": ->
    alert "You pressed the button"

  $('#hellosir').fitText

if Meteor.isServer
  Meteor.startup = ->
    # code to run on server at startup
