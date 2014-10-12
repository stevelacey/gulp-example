g = require("gulp")

g.task "clean", ->
  g.src "web/{css,fonts,images,js,vendor}", read: false
    .pipe g.p.clean()
