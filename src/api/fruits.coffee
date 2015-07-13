server.route
  method:  'GET'
  path:    '/fruits'
  handler: (request, reply) ->
    reply data.fruits

server.route
  method:  'GET'
  path:    '/fruits/random'
  handler: (request, reply) ->
    reply data.fruits.sample()

server.route
  method:  'GET'
  path:    '/fruits/{id}'
  handler: (request, reply) ->
    id = parseInt encodeURIComponent request.params.id
    reply data.fruits.find id: id
