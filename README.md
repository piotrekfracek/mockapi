# mockapi
Create a quick fake API
NodeJS + CoffeeScript + CSON + Grunt + Nodemon + Hapi + Sugar + Faker

### Configuration
```
npm install -g grunt
npm install -g grunt-cli
npm install
```

### Run
```
grunt
```

### Example routing:
```
server.route
  method:  'GET'
  path:    '/users'
  handler: (request, reply) ->
    reply [0..4].map (user) ->
      id:   libs.faker.random.uuid()
      name: libs.faker.internet.userName()
```
