g = require("gulp")

g.task "images", ->
  deferred = g.q.defer()

  g.src "images/**/*"
    .pipe g.p.imagemin().on 'end', -> deferred.resolve()
    .pipe g.dest "web/images"
    .pipe g.reload()

  deferred.promise
