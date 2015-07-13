# Libs
libs =
  hapi:  require 'hapi'
  good:  require 'good'
  sugar: require 'sugar'
  cson:  require 'cson'
  faker: require 'faker'

# Server
server = new libs.hapi.Server()

# Data
data =
  fruits: libs.cson.load('data/fruits.cson')
