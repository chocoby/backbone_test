class BackboneTest.Views.TasksIndex extends Backbone.View

  template: JST['tasks/index']

  el: '#main'

  render: =>
    console.log 'render'
    $(@el).append @template
    @collection.each @renderOne

  renderOne: (task) =>
    console.log 'renderOne'
    view = new BackboneTest.Views.Task({model: task})
    $(@el).append view.render().el

  initialize: ->
    console.log 'initialize'
    @collection = new BackboneTest.Collections.Tasks()
    @collection.bind 'reset', @render
    @collection.on 'add', @renderOne
    @collection.fetch()
