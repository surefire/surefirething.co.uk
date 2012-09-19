# Require our application.
app = require './app'

# Bind and listen for connections on the configured port.
# 
# By default the `config.port` option in `package.json` will be used,
# however, this can be overridden by setting an NPM environment variable:
#
# ```
# $ npm config set surefirething.co.uk:port 8080
# ```
server = app.listen process.env.npm_package_config_port, ->
  console.log "SureFire server listening on %s:%d",
    server.address().address, server.address().port
