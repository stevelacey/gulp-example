g = module.parent.exports

g.task "bower", ->
  g.src(g.b()).pipe g.dest "web/vendor"
