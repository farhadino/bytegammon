root = global ? window

if root.Meteor.isClient
  root.Template.hello.greeting = ->
    "Welcome to bytegammon."

  root.Template.hello.events = "click input": ->
    alert "You pressed the button"

  allowDrop = (ev) -> ev.preventDefault()
  drag = (ev) -> ev.dataTransfer.setData("Text",ev.target.id)
  drop = (ev) ->
    ev.preventDefault()
    data = ev.dataTransfer.getData("Text")
    ev.target.appendChild(document.getElementById(data))

  $ ->
    $('#hello').css('display', 'none')
    $('#hello').delay(100).fadeIn(1000)

    $('.point').draggable()

    console.debug "hello"

if Meteor.isServer
  Meteor.startup = ->
    # code to run on server at startup
