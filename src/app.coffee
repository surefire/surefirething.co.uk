# Use the [express](http://expressjs.com/) web application framework for
# [Node.js](http://nodejs.org/).
express = require 'express'
app     = module.exports = express()

# Render views using the [Jade template engine](http://jade-lang.com/) and
# apply pretty formatting to the output HTML.
app.set 'view engine', 'jade'
app.locals.pretty = true

# Configure sensitive routing so that `/Foo` and `/foo` are
# treated differently.
app.set 'case sensitive routing'

# Configure strict routing so that `/foo` and `/foo/` are
# treated differently.
app.set 'strict routing'

# Configure application middleware to render stylesheets using the
# [LESS dynamic stylesheet language](http://lesscss.org/).
app.use require('less-middleware')(
  dest: __dirname + '/../public/stylesheets'
  src: __dirname + '/../src'
  prefix: '/stylesheets'
  compress: true
)

# Configure application middleware to log all requests.
app.use express.logger()

# Configure application middleware to apply defined routes.
app.use app.router

# Configure application middleware to intercept requests for static files
# and serve them as a response.
app.use express.static(__dirname + '/../public')

# Define application routes.
app.get '/', (req, res) ->
  res.render 'index', title: 'SureFire'
