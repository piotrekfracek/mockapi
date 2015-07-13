server.route
  method:  'GET'
  path:    '/'
  handler: (request, reply) ->
    table = server.table()[0].table
    reply table.map (route) ->
      method: route.method
      path: route.path
