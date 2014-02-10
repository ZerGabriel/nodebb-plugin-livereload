module.exports.appLoad = ->
  ModulesSockets.livereload = (socket, data, cb) ->
    cb null,
      host: getConfig 'host'
      port: getConfigInt 'port'
      path: libPath