server.connection
  host: 'localhost'
  port: 30000

server.register
  register: libs.good
  options:
    reporters: [
      reporter: require 'good-console'
      events:
        response: '*'
        log: '*'
    ]
, (err) -> err? throw err

server.start ->
  console.log 'Server running at:', server.info.uri
