(->

  Name =
    ng.
    Component(
      selector: 'name'
      template: '<ul><li *ng-for="#name of names">{{name}}</li></ul>'
      directives:[ng.NgFor]
    ).
    Class(
      constructor: ->
        names: [
          'Phil'
          'George'
          'Bob'
          'Frank'
        ]
    )

  HelloApp =
    ng.
    Component(
      selector: 'hello-app',
      template: '<h1>Hello Ang 2</h1><name></name>'
      directives:[Name]
    ).
    Class(
      constructor: ->
          name: 'Bob'
    )

  document.addEventListener('DOMContentLoaded', ->
    ng.bootstrap(HelloApp)
  )


)()
