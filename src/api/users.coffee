server.route
  method:  'GET'
  path:    '/users'
  handler: (request, reply) ->
    reply [0..4].map (user) ->
      id:   libs.faker.random.uuid()
      name: libs.faker.internet.userName()
