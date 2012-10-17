# Require our application.
app = require './app'

# Bind and listen for connections on the configured port.
#
# The port can be set by setting an environment variable:
#
# ```
# $ PORT=8080 ./node_modules/.bin/coffee ./lib/server.coffee
# ```
server = app.listen process.env.PORT, ->
  console.log "SureFire server listening on %s:%d",
    server.address().address, server.address().port
