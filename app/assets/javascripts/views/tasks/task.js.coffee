class BackboneTest.Views.Task extends Backbone.View

  template: JST['tasks/task']

  el: "#list"

  render: =>
    console.log 'Task#render'
    $(@el).append @template(task: @model)
