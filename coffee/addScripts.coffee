module.exports.addScripts = (scripts) ->
  host = getConfig 'host'
  port = getConfigInt 'port'
  scripts.concat [
    "plugins/livereload-js/lib/livereload.js?host=#{host}&port=#{port}"
#    "plugins/livereload-js/livereload.js"
  ]