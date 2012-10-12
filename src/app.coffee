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

# Configure application middleware to manage assets.
app.use require('connect-assets')()

# Configure application middleware to log all requests.
app.use express.logger()

# Configure application middleware to apply defined routes.
app.use app.router

# Define application routes.
app.get '/', (req, res) ->
  res.render 'index', title: 'SureFire'
