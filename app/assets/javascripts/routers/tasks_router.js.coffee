class BackboneTest.Routers.Tasks extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    @view = new BackboneTest.Views.TasksIndex()
    console.log 'index'
    $('body').html(@view.render())
