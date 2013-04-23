![SureFireThing.co.uk](/assets/img/surefire.png)

[SureFire's][surefire] website. Powered by the [Express] web application
framework for [Node.js] using [CoffeeScript], [Jade] and [LESS].


## Requirements

* [Git]
* [Node.js]
* [NPM]
* [Foreman]


## Installation

Clone the repository:

```sh
$ git clone git@github.com:surefire/surefirething.co.uk.git
$ git submodule init
$ git submodule update
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

## Automation

[Grunt] is used as a task runner. In order to get started, you'll want to
install Grunt's command line interface (CLI) globally.

```sh
$ npm install -g grunt-cli
```

This will put the `grunt` command in your system path, allowing it to be run
from any directory.

## Documentation

Annotated source documentation can be generated using [Docco] and [Pygments]:

```sh
$ sudo easy_install Pygments
```

```sh
$ grunt docco
Running "docco:src" (docco) task
docco: ./lib/app.coffee -> docs/app.html
docco: ./lib/server.coffee -> docs/server.html

Done, without errors.
...
```

## Authors

- [Andrew Garner](http://github.com/andrewgarner/)


## Copyright

Copyright (c) 2012 SureFire. See [LICENSE](LICENSE.md) for details.


[surefire]: http://surefirething.co.uk/
[git]: http://git-scm.com/
[foreman]: http://ddollar.github.com/foreman/
[node.js]: http://nodejs.org/
[npm]: http://npmjs.org/
[grunt]: http://gruntjs.com/
[express]: http://expressjs.com/
[docco]: http://jashkenas.github.com/docco/
[pygments]: http://pygments.org/
[coffeescript]: http://coffeescript.org/
[jade]: http://jade-lang.com/
[less]: http://lesscss.org/
