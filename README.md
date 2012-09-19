# SureFireThing.co.uk

[SureFire's][surefire] website. Powered by the [Express] web application
framework for [Node.js].


## Requirements

* [Git]
* [Node.js]
* [NPM]
* [Foreman]


## Installation

Clone the repository:

```sh
$ git clone andrewgarner:surefirething.co.uk.git
```

Install dependent packages using [NPM]:

```sh
$ npm install
```

Start the application with [Foreman]:

```sh
$ foreman start
00:00:01 web.1 | started with pid 99999
00:00:01 web.1 | > surefirething.co.uk@0.0.1 prestart /path/to/surefirething.co.uk
00:00:01 web.1 | > ./node_modules/.bin/cake build
00:00:01 web.1 | > surefirething.co.uk@0.0.1 start /path/to/surefirething.co.uk
00:00:01 web.1 | > node ./lib/server.js
00:00:01 web.1 | SureFire server listening on 0.0.0.0:3000
```


## Authors

- [Andrew Garner](http://github.com/andrewgarner/)


## Copyright

Copyright (c) 2012 SureFire. See LICENSE for details.


[surefire]: http://surefirething.co.uk/
[git]: http://git-scm.com/
[foreman]: http://ddollar.github.com/foreman/
[node.js]: http://nodejs.org/
[npm]: http://npmjs.org/
[express]: http://expressjs.com/
