g = require("gulp")

g.task "fonts", ["bower"], ->
  g.src ["fonts/**/*.{#{g.types.fonts}}", "web/vendor/**/*.{#{g.types.fonts}}"]
    .pipe g.p.flatten()
    .pipe g.dest "web/fonts"
    .pipe g.reload()
